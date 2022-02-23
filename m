Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 86A6CEBD
	for <ddprobe@lists.linux.dev>; Wed, 23 Feb 2022 17:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645637184;
	h=To:Subject:From:Message-Id:Date;
	bh=CKzcDReKdkrurD9IssWzmUWn6I8qKrU5ZrC9nXxwCyE=;
	b=djPyp1UjrsCDTf/YKIVsPDEEMAB0zpt1LaDKZnrJqoSkXR8BuR4w8ce53DvJER3+
	HH0iffcHAHfVVeK6Nqir8BPnC0Oz3cYo23soznnB/bNvolUWCH7NgJZLM48SKNGO7+t
	Kk7LyVIcKp2wHOKFFcm8SvcZQXkORmVdnwbJInX0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645637184;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=CKzcDReKdkrurD9IssWzmUWn6I8qKrU5ZrC9nXxwCyE=;
	b=APuii0OuxU8kkvDrSxwYkr+x6iAI9WwdX5Y/5mcNmbJCTrOuq/U2+CiWll71E1sW
	sXzI2WsgYlCm0YB7EyP0oGdUBH2wwFTBeIjqfXRgZiS2FYjf93gQ7AyzJpRdZ/VVTn/
	HZzMZ2GBWZDNJn4apWe3/f/PbryLvsPs0By8/EHU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f279ead01-f7698b28-077a-4b2d-ab17-a712855b961e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 18bb7e3b3d3658b7466e04678f8c7a526aa7351f0abc2e0a824e4ea1be7619a9
Date: Wed, 23 Feb 2022 17:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.23-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645637184
