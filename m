Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52EF11365
	for <ddprobe@lists.linux.dev>; Tue, 15 Feb 2022 07:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644909684;
	h=To:Subject:From:Message-Id:Date;
	bh=OUxlSaJHquM1OvK8B7AkIcgmObIiZDRGdwVpt4BfdTs=;
	b=BpZx2Y8bAnGckXqC912+cS3a8Sc+vhZgV1clcnmy7NaXqe4NIfeC4DAtAiW/Zukl
	rEUfK053Pxc3skW+8jmiHkfMpxKya+a76vBA0wLz8D6YIf041HiDDaicCA87ikkSbiw
	9dlGtlFDU2KORbLU9qld4Ue5FR4g1RGQ+osAcHRg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644909684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=OUxlSaJHquM1OvK8B7AkIcgmObIiZDRGdwVpt4BfdTs=;
	b=EqNI4YeOZQZhp677iIcm6Z25CyOIeMhPtsI77SfTJo7haJAd+/JPtwvBPEE/7Jef
	sFrxZhdgReGgA57CzgKhmQ/9/xn/jpKSz1ZdQWAi65t4VrL+oprwtHLBN7ygTjD37S+
	06vTQGxt4jUGyN/ALhxsV+u1DHGAAbNd1WNVaOzo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017efc41e80f-2933a59c-ebd4-420d-a39a-53a66df73487-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0775cdbc24269a7223ac13371432a8120102cb96b165f181b11e0882c7420795
Date: Tue, 15 Feb 2022 07:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.15-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644909684
