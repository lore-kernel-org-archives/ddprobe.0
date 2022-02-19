Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A89E028E2
	for <ddprobe@lists.linux.dev>; Sat, 19 Feb 2022 11:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645269684;
	h=To:Subject:From:Message-Id:Date;
	bh=I7aeIrhMyS5LcoDMpEwUcQIufVi+/Z5EKAxvGnc8HDM=;
	b=I8pQdAP4xsygrNia7fKXFonODn0xp+Wk18ByDel6RKmV7efupMXQKpIKRuaeIg88
	pWpcwMYvPWwk8cy1Uhv/54D46OcAbf8QI0hDPrzozqNCV5pu6THGRZ+o27gFf0dI8LK
	Ks0RQLhQqbIWfEmJAvDFSSDE5Te9LiJb1+BL0V18=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645269684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=I7aeIrhMyS5LcoDMpEwUcQIufVi+/Z5EKAxvGnc8HDM=;
	b=aD8mwxR78HI8xOzlwwOF8wsvAPTBsTlHanY0VPXglWMUbbDURKfFB0Exzh5lOPQt
	899P9PLfNKnHFc5UdaRaLpbIL7Ix+2BwqPpqtjM/PuPtrg34PcP0rwfpdzulUgXkT2Q
	1kpViDcsMT2mgnCtBj/93Tb0cauFCkp9YqPd7KOk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f11b71243-5e4ca556-2ca9-48cc-8da5-e0938b7ca01c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 254c929cb9ca62466dd83a1686241d8c60de8696b9f241fd1d021a272919e5b4
Date: Sat, 19 Feb 2022 11:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.19-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645269684
