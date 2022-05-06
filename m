Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C873811
	for <ddprobe@lists.linux.dev>; Fri,  6 May 2022 12:51:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651841518;
	h=To:Subject:From:Message-Id:Date;
	bh=aW1ZJWHeK7KZjSOiegUWPDk4L7h2jp58dF19BqXekd8=;
	b=B0FpKhUURTRV1DZcKpbsIDTBB8/1jGlZA226pjAgnEKemGKaxi3xN/lKQpOdAR/B
	NORBnMIjoAyhZ67q0mtC7cwhfomvwZ/PFL7NU0EtMDRXG59w/IZD7jewnY980lIVQY8
	xBYAxQ09XvoPzGrD5YFLADGQD5ARQ0e2Op+DItCM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651841518;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=aW1ZJWHeK7KZjSOiegUWPDk4L7h2jp58dF19BqXekd8=;
	b=Yuplt66CGjFQQM/SNL3sN5B8RcJgc7zpS/wtBU5414Y+57q8HmK3Pdnq0eWDZ7o8
	NFSjpmpwYSVuopwnTRIxZO+ZyYpLSi2LlvdFbEIJKDt7XgAeHryNGncN8F17G1yx8aw
	5/bHR+/0v4v5oi6ixRLXih67WWJQJKG+7QX0DiZo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180996d4abe-30a442b7-e8b7-4e9e-bbb4-fd104bba57a8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c02f0c2b7b46e17714f41f0f9d249c74fdc33a948ab09cf2d4a486a40cdaa09f
Date: Fri, 6 May 2022 12:51:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.06-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651841518
