Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 932EC185D
	for <ddprobe@lists.linux.dev>; Thu, 24 Feb 2022 11:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645701685;
	h=To:Subject:From:Message-Id:Date;
	bh=MjXTCpoi7tcBBWGtMmD9c8ZHCiy7CILuID4owfzZ6rE=;
	b=BGnMuhTfq1Wu96IrmQHux9mvPwNy6Xe9TbBJlS3P+vPGCzUOy2a6qEg1f6E2srtg
	laD+trwOew/XPuecVyM1/gqjq0FyFkXO17Bqwo8FsGLWhxu9VVu/rWxLn0Ov8LAjM/c
	wSMpYBQ0zfCCAHwUSoLPRz0frJn62mgnnEbVVJGA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645701685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=MjXTCpoi7tcBBWGtMmD9c8ZHCiy7CILuID4owfzZ6rE=;
	b=bNfW1FuCO/Vq08wTuTKs9udwYNUeoOLMF7UeXE8g5czeMzAykG2NBDg1HmDg0Ybs
	AwgXAQeShGq6gMRAqIGgTIdNlVRqOBtTDBnTwC4vMn9DfkbhmfhwvpwnN4jvUTvFZwx
	sGeaVaBJKVzulJttJaCrI2SOEwI6O4bei+Z87cVU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f2b76de50-7dc2ab41-fb7e-4b2c-9fd4-2f191a1be378-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c4d9aac4b806b2aaea0c59030dd0aab4fa0cd3ae1a54d9d69cba823969b02829
Date: Thu, 24 Feb 2022 11:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.24-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645701684
