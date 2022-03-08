Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 780BF7491
	for <ddprobe@lists.linux.dev>; Tue,  8 Mar 2022 22:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646778084;
	h=To:Subject:From:Message-Id:Date;
	bh=m704ckI3shVC7Fb/0c8B1urQed6i37L7s6ua/mUxgXM=;
	b=XEiVOWoG8nbe4Oq0oO0Xg1veedNyLW/IohExQIbfzCP4veMVtK5vqrx0K2Ws2CnP
	5C2eWlDunqzENBSWSFKbslFumHfpSZ0c0NJWYkhqjfZlU0iqGgOS3pRUKm5/U8hKH5k
	1koRGFdr60naOeHBSu4Xbj6mjJnOVFAQwvyOO1oU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646778084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=m704ckI3shVC7Fb/0c8B1urQed6i37L7s6ua/mUxgXM=;
	b=mGkvU6q/ksa7WaS0LhqejPdZte3IuGY7fQU4rfmBJX0ZAtvQPCtY7cYeBusleMWd
	xjpuCOD5QivR0P3LrsJaCJd/o4IXjTYLed9ZHLMEZzVjEeK4hFxKx+TfqcuHesRBq4A
	ef0zObvOHbu/kAT0wDen3X08M5gQZXHfV98RaMlM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f6b9f6d95-72ef4094-98b8-427b-9676-0eeec8f00045-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 06e0cd0c8c0036f7d7487045d421ac23615fd194d900494f50434ee7c6366c8e
Date: Tue, 8 Mar 2022 22:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.08-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646778084
