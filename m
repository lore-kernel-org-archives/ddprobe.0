Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F5377C
	for <ddprobe@lists.linux.dev>; Sun, 13 Feb 2022 21:10:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644786638;
	h=To:Subject:From:Message-Id:Date;
	bh=y7OaNUrMfGsByeaKLpA3Ro1jdZSN9wya3BIfaWM9wJo=;
	b=V376RmTN4JrTcBgsWHnH/ifa2zmwVNRfOqEYzYTnolqLoPZvAzcOsYzzxM7rsM4m
	Zg4sdXFHba7ik78crBYR2ntUAbtofFeQu7O7rwdte/CT2M9mCzSajfmJpWkqX7w0eY2
	gOjDxPMvMyHjdwLVswUXh+TRlAD7spS+C2DE19Ng=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644786638;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=y7OaNUrMfGsByeaKLpA3Ro1jdZSN9wya3BIfaWM9wJo=;
	b=NlqU7FeK4CTP5rkIzsxLUEaSs6eWAdAYnUQDpRPTRke2CyRQjB6OoLQfC1JJpIRd
	Nhwt3/vgOj91o6wjDsndAhO1dM3CNpgDnQnQIffmytngBb0EQlUBWvxKDCyhaCrNLaJ
	czOKEor0Ba7/o/W8PicFSkp/CtBwQnEKarkInqlo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ef4ec5fa7-4383cd7c-7dae-49e2-b13b-b5f925144bf2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ad507fc1dab1c640bc6408763a0679e6873219fe4ff6299bd2246c6287b17cec
Date: Sun, 13 Feb 2022 21:10:38 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.13-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644786638
