Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A49D97B
	for <ddprobe@lists.linux.dev>; Thu, 18 Aug 2022 03:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660794053;
	h=To:Subject:From:Message-Id:Date;
	bh=SUqPVLEgtXLIbgYKMwqP0NkrYJsVTTRipNB1f0U8BrU=;
	b=EHyvTeKBHbwnm1Jule89sF0+pRj/jQFOpkof6Zh3LG6FNLKjGizwpvEuvmOzqgEa
	QxmlGxLEm4GaO8Uj+d3NTRdM75Dg0LjVq0DkjZagQPWbX+v1pyG2qYPdFNofj2T1q45
	aggWvV28hRXf/UzAKQWxfL7aGX1FdoR2otXyIL3M=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660794053;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=SUqPVLEgtXLIbgYKMwqP0NkrYJsVTTRipNB1f0U8BrU=;
	b=ZogL/ac/Htn8MQ+xMSwWyRvMy35YJIwJl/Cs7pC3/0NRkiUqVSzvYvDChUM6AA4E
	/j6wVp/YhCzUQpcMng/dUpvzLL+rbx8cJIqGuz5R+sxgRF4qHkuSKXjIozauv0u8++C
	SdJUVo8Sws90sReA5kq6YacIRc3HT1lUENVGhM+4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182af0a1fde-c5da00e3-9529-42ab-ba82-bdd291c2bab1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: aa57af468ba51f48b8285c2a1b6c9d9db04acdb31be57403a11b4fd741d7d2fa
Date: Thu, 18 Aug 2022 03:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.18-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660794052
