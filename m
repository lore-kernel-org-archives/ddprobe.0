Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B248123A4
	for <ddprobe@lists.linux.dev>; Tue, 10 May 2022 02:25:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652149500;
	h=To:Subject:From:Message-Id:Date;
	bh=usfMj5hFoMimtlWnpWE8L/bBg56mbsUOdyTuz8KmJ14=;
	b=gs0Kgz/O2vyH0P5AZYNd2F6me/DQV8bSDAa7m4hi4e40tn4gQjuZmpKarrLXcn8i
	+yp2m5wbDlukbxtTaD63weytozlEpv8cJDjg0kQZQWYjKF2QNuaaJDM7QB/2YZJbxBw
	i6Zz4EEDWZ2UmudBolh2Ur3lGPkg6aRazKygVqHo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652149500;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=usfMj5hFoMimtlWnpWE8L/bBg56mbsUOdyTuz8KmJ14=;
	b=R6tWdF4i+PKxuFohRN9mGHslzar2BN00uhWZmA8HPMFxpO8KHl6zGFVfvfLjNt+Y
	7cULVc+6Sr7Dye3wz3SZ+NJHsyv6+swar7T2Rwfro9xX7SpEh5PcmdSaYfSnc/eHbJo
	A0qU5ibLqZR95DviBHEnYVv2IW6gglu5VinQbz0E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180abc8b5e1-91c45435-83dc-4c4f-8b89-15b533bb1ad1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fe35a2fa849f5e469f5960704590adead83b7801f39d25248feed274c741cff2
Date: Tue, 10 May 2022 02:24:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.10-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652149499
