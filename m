Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 660A3184E
	for <ddprobe@lists.linux.dev>; Wed, 23 Mar 2022 10:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648032984;
	h=To:Subject:From:Message-Id:Date;
	bh=5n4fnQ1qKCwwiV5ao1u+Wjya+iDYgGFt1bWcNZBybx8=;
	b=LNofjNbBONVgRMbicoVSmP2P1aJIMSSZrPeExvbTPCt6OJseZIDzKOJDIskuxksK
	9BoZbi+IdcwPLANzzII50aAoWlmqYG7fwKEo6nHzakx8MeepLB5TSUT5VG+hfhrhuXy
	DoGWalPaUBhDZpQwuR/xLyDqWYSxKYzZFNEZVgL0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648032984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5n4fnQ1qKCwwiV5ao1u+Wjya+iDYgGFt1bWcNZBybx8=;
	b=CaXW26rz1xdzaLPKleLv8Xf9+iNUow/dmxmPd+6ak0hQe6QT2pz3DqcX0bStT3hH
	g3J1uR6lPk7ekit9c12b14HbF9n2K591s5MbSz4J+exf6+Ye9qe1B3+XwTu7ako2Qxy
	QK0/WkMrz6uv3s6WyaVA+igqgVzGUSyYH76wg09o=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb66baed7-8502eed8-bc01-4e57-ad12-fa341b1c013a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8fe18fb0ded4f29988bacb8b7c31f4e31af3b6e157f217cb24a473349acca8e3
Date: Wed, 23 Mar 2022 10:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.23-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648032984
