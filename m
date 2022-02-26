Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 511E5369B
	for <ddprobe@lists.linux.dev>; Sat, 26 Feb 2022 05:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645853184;
	h=To:Subject:From:Message-Id:Date;
	bh=SbH8jQri/JbHxhtQuXw6BUEczuXYfHZM2eXe9N6suTs=;
	b=RdED21gLM9BfAZsXLw3J40sZ4MzRxVf5Flp8bfLdEYF9MrCPOYJ0UsV1BNwjpxqk
	Pt1H0BOHpP8pb7ms0xHDN+zvXMhFe98Tg+UtLiyer0R5LOs/zvnWG3DX5TjMxkz20xx
	uXTI8MuKO0lbCFd8CTTnDwWmuH+0WRP0/cs08qPU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645853184;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=SbH8jQri/JbHxhtQuXw6BUEczuXYfHZM2eXe9N6suTs=;
	b=PeBTXu/i8m4J0nrwpWM7zU5lXxVKZSHWyC5oDMmbS1grD9oSuAdzccFQ8UOQ2WUH
	v1oe6dHe7o9CPWaW9FU2hResGxapcUY3XF5uT9wv/2FtlkLfKoKZEic4pE1mDKic8XG
	4MjVFhXZX5rh6uqUHHDo7d9ZaQvqpMteYpY3J6Hg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f347e92eb-479aadea-5590-4071-952b-5303cb4248d9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: caaed4ecee193d39d331659dbb63df2d7cb27df060d2f7588430288b89915d2c
Date: Sat, 26 Feb 2022 05:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.26-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645853184
