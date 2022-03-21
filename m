Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE80636F
	for <ddprobe@lists.linux.dev>; Mon, 21 Mar 2022 23:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647905185;
	h=To:Subject:From:Message-Id:Date;
	bh=N1314CPD3aps1/vlbJG7RBGdHHphLQlX52zPYn+8eOQ=;
	b=AfvCPFZic5ZaXX5JVfSkA7iUHZHDw/UpTBlxw3TbGkijJIHk/R7Bj6TYWdnIFgd+
	tG+df4fkGnjeaVAO8MVK7EAMeXRUB1DBse97kUHVTs28NdVASf+wOq2V7tA5Ol0ZWH1
	8TX1XnyrGFsFcZIfDKsF7EtkqY+otw2HdxlPRfLc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647905185;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=N1314CPD3aps1/vlbJG7RBGdHHphLQlX52zPYn+8eOQ=;
	b=b/89EHIyQyOzy2neFIbA2qPgLV7G6R9lEAwQcolC1ihsZST4M6p4nXFMy692DFgj
	lJ7RXdqbilDATGAndZmxDyXpCEwAvtUh3JoxY9dwjsqM5MxlZAgCB0/Kf440fqT77ZG
	8tVCUnKHUVfaiznMQwg+W7IyT6EnPM2SP44TBn+M=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017faecd9c85-5c1e3579-2d91-4fc6-9af1-cf27afe724d5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 884ad8eb40c71d2699dfc63f6e65f9da4bddc5d24c2f15d05643fe0ce8f60c3a
Date: Mon, 21 Mar 2022 23:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.21-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647905184
