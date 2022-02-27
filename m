Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D9AC7B
	for <ddprobe@lists.linux.dev>; Sun, 27 Feb 2022 11:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645961784;
	h=To:Subject:From:Message-Id:Date;
	bh=2ziGhYsaTM+4Z1ZLfGhL+0mEhGF1UhGFwt6EOZ0VZCU=;
	b=b6kILOsKz15oyBKXDy/oTyt9uUZ3ZQ+9BvVkGYcpmglX/mXjcmIznz4jlpGbN7e1
	d3jCl7agbBR/DH4goye44ux8eyEiY1Md59d9fPzGEueijLMhzPfbQcRwAcgluU3g3u8
	T00+zruiWh4k5LRzDM1Vg+7bhz6+NKgt8PiMfmz4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645961784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2ziGhYsaTM+4Z1ZLfGhL+0mEhGF1UhGFwt6EOZ0VZCU=;
	b=NQWL+1UPa5rs7Lx4ZfD4i5uwMrzrkxYS24ZziuxN7/6nP+zsiVe+pT3KANiprzsQ
	F/T9P650zjktw+JiakaA5aNVNq/RvBmohQ0aHtWwCzvp2bpkKLAmIQYHPZ0TA2SyYYD
	a0F2fpXaWmKMafNg1L8UaSCRSRbeJwD0axvanGsA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3af7adaf-d18a6fc9-37bd-4d6c-ab16-669f3bd0f726-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 10779f6d2e74079e58eb1bc445c9205d8905a7293bd368b8dcd341b6554e7905
Date: Sun, 27 Feb 2022 11:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.27-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645961784
