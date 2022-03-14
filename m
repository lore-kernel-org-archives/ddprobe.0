Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8004A7A
	for <ddprobe@lists.linux.dev>; Mon, 14 Mar 2022 10:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647253285;
	h=To:Subject:From:Message-Id:Date;
	bh=dZpsI2L3fKLGTiksHYJb9G3jZgYuOw+N6xVGd8qAym4=;
	b=AodC/pVKU9VbkTcdOag6ynYwOxZxHzaxGzbAw3s4ywFbviGWqIgUkzEIw8mU90sE
	gyGoJKLT8xwXQc2HoSXbahjDvRbn5Z8JEJD2LfqJFcaIw8KEVKVPMyriiNc0KAB5NTc
	3K8oYQsotOngefOzyzpCH7RJ4irwEZCi7MXrU64c=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647253285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=dZpsI2L3fKLGTiksHYJb9G3jZgYuOw+N6xVGd8qAym4=;
	b=CNFuflbd5TTB5LAdfA21JlAWHXo3edlCzVwC6UCl13Ex0o5wwokdHTCjNim4Dx57
	E6mzbltzdkoPk2oOIVgEtzU4mehce6Q7IGlX9UWLhur1IXdrBNQ0QD2uzHuDqHB01MO
	eloVlGBL8gBud/9plx4mU/i8/RvHDKl18kspo0QM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f87f26793-16e0c3e2-1119-477f-bbdc-c94b5e248eb2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 35250e2a0f348147aa4cb023b634bf7df00459fb5427aaa171ebbe404ed5904f
Date: Mon, 14 Mar 2022 10:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.14-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647253284
