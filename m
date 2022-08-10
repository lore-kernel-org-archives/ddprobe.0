Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DC3928F1
	for <ddprobe@lists.linux.dev>; Wed, 10 Aug 2022 15:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660143652;
	h=To:Subject:From:Message-Id:Date;
	bh=Pb+fgT6UWUl9tyIWbv3f9jyqdVPZ29x4A7rK7vK9HKE=;
	b=Drjg7BtJ1L+W8dr35ZISUHM8OC8gP+zxgHSp8QMgwk/DI8jYqbAUkJK8bZAw+XG/
	2K3afAm6eGv1CaRJMbC6eP5si48OlxfXU97Hlwhfq3shnD8Tq7iNInPbSXJb/0t1fHH
	JMxyvN0+6Rc6MafrEmKfGsChjOvXpP8mVnl5tBqc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660143652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Pb+fgT6UWUl9tyIWbv3f9jyqdVPZ29x4A7rK7vK9HKE=;
	b=FBTPkdbDiTRlRNkrg3er4gbF/rvrCgJTYmOFsauhhyRDj3Qu5pPmITB8af4ayw9Q
	Ki4/A0anyMD27M19C26YpFpa6sIln0wVVcZLi61WPVq/Xh9uHECMtx+nNSWyf1IfSIH
	zkJNviVm/IUyHYb6kHrg8p8dJHKAgNdOz9tC8+kI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101828845cf0e-c5f6d760-7149-45f4-8748-11688ec448fd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3ffcc47e057b75297fcf367f58c4c28af16ea388697ff674eea355e2dd3b2c96
Date: Wed, 10 Aug 2022 15:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.10-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660143652
