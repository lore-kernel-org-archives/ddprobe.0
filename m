Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 334D117C1
	for <ddprobe@lists.linux.dev>; Thu, 12 May 2022 04:13:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652328779;
	h=To:Subject:From:Message-Id:Date;
	bh=NInZ8c2U+OQfuxsBAOpJSBMynqRKgO9vM+BRK84uTRQ=;
	b=KJToAZ17Ho/0Ae7MOwEOy8nK2OZzeVnvVr6w2DgTZoqvdSoMowgoytA6zzDQ1glL
	AJ/yQs+0EjX31RzguC3jcFg+dfRFVmgFI66S9N3xAQ/kwK+ZwF3upQn9U6jK02zSm7P
	I40dq3iZKjA6xA9/17C4Kq1YWdw1EyhDeO8ve+A4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652328779;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=NInZ8c2U+OQfuxsBAOpJSBMynqRKgO9vM+BRK84uTRQ=;
	b=TIooNZ6u1MJD4xZ3Oclh2r3gZYYOBSj2/XarI/i+R74PPmDi20SsT2NgllvQjsun
	3qihCXDtfUsLqpXebaI3f3lYZ09YNzcqSpVEwBGkz8UAq+87eDemgUaMYMQgJIhOU30
	6QR/wEt6+f5z2KkoGckZ6ibCTQy6+ewSHRODOYGI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180b6784e33-7216946a-fb25-41f2-8c01-c43aa7a17b0a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3f52586e0951312a8a0a8cbda0bda0f50c462887d95c7f48a7a1b9d4719fa6cf
Date: Thu, 12 May 2022 04:12:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.12-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652328779
