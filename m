Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 90A6E7D
	for <ddprobe@lists.linux.dev>; Fri, 11 Feb 2022 21:50:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644616236;
	h=To:Subject:From:Message-Id:Date;
	bh=c5ZeEzhm8cMS2BiKI+QGbE2IA8axBdfnTgoq1ZnBbZQ=;
	b=lxMHquHdoLz78Gpj+YmdRDuOZvgyosgwgZVrVdttFlnA+ojG5j7aw95W2lRdX4Sj
	uSYsDQIEvootedmG6+KMTkbuEBBJPvhfQyatCpS7QNhWiipbN9dmSKfb++Hz+SeZv5m
	QnkuqmKcN6fgmm/xp/b/TN3Pacy9bJk9KHKZ+R1s=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644616236;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=c5ZeEzhm8cMS2BiKI+QGbE2IA8axBdfnTgoq1ZnBbZQ=;
	b=AyE3b/VL1aSJHXv1FzYAE+pZkMDYcx6lAyrwzrbI0MfVYC3s+Wb9jS6Zra3pjV14
	66LwngEj5jDTb/HtQ9AVreMRDIpfHnCA7ajgnCO6lo31UXktaB/QwmpcsNLLR0kWhg+
	uqOe3EBB3RHfyBinPIeXG1EM6YbjoxaUuysbXxus=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017eeac43ebb-a02d9f34-b29c-4a1d-b740-9685ef8ebb8d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 58d062c76f74c37aeefa4adb9c92a2bad0dc5e237ddb18429a2c2146451627ad
Date: Fri, 11 Feb 2022 21:50:36 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.11-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644616236
