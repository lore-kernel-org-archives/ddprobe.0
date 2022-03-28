Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 100264366
	for <ddprobe@lists.linux.dev>; Mon, 28 Mar 2022 14:02:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648476178;
	h=To:Subject:From:Message-Id:Date;
	bh=RTZNudtjXOOZZBNCpIb2vJiXQhs7uQuhimO8N+7P7B0=;
	b=O6BK8qKwUxSxh5VDO4E9nYs9UMFd7T7dBjzzvbNIRt+bVgN1RibKrowafzptJxJz
	9nOf5nYbGRw8Y62FqiT4QQ+gmQ0IE7a8nbYnAcUpa0ZT34Rcqiy5zp10Rh04FsSjWIb
	ZUEFpK7NrXT0LvcdIgGuFX7JW3iTY1BvE/V4yAMg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648476178;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=RTZNudtjXOOZZBNCpIb2vJiXQhs7uQuhimO8N+7P7B0=;
	b=BjnnkjsdOwRoR7HKJqjwmCOG+3MaCZW77FkJQtqsKniskDpx6LM/Ku/pDzuRACjE
	8BIoVse2rDqmsJYwwCvyMVsV1YSArwtyftnNIaP6Q1QrMS7BPvjRfC2XeHP8h/eqkqR
	ABkEFyNzSmsXg/uBdf+JFnMb2KDFVgfnSUv4y0E4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fd0d64774-8f6cda79-040f-45c3-9aef-59ac9251d552-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0ca83c690316ce56f345d9f20fbfcd443aa43cbe86e15b9b310a85021ca3e5da
Date: Mon, 28 Mar 2022 14:02:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.28-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648476178
