Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C6507E
	for <ddprobe@lists.linux.dev>; Fri, 11 Mar 2022 00:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646958984;
	h=To:Subject:From:Message-Id:Date;
	bh=V4ZtzW055gglgBeRnt6Xy60wIHlhOsffXQTBS6ipgYc=;
	b=doYaDed4FAVeSd8xcZ0dBPCbMutnbNAz1julhmg7PsVzqcYbNho1HKeyU/iiJBfp
	n+rpM11qUFEdRXplxaUxpxF1zq6eLjcQTWbR+bNBJh4vrFI5ff0VLtWKNMqgQxJ0B+V
	mpAhrE7Bsa8KGoY0PYBTvG1KiXtbwmA3tY42AIj4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646958984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=V4ZtzW055gglgBeRnt6Xy60wIHlhOsffXQTBS6ipgYc=;
	b=kxxZolYMAgJMSKTL58fC1dzQJFmQBfV7CCZRJuQnrSH+zRkECniBlBqVsIsLxG+u
	etwS9TuCgt7avP6VjsfH/zHvkVy1mki//epa915AIWQoTiKui0zCqbtGwljhVbntbJh
	wRTGA02XDCVGDZuif/vTAMqWXUj29SOx4I3UN144=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7667be00-f6ce864a-b265-4621-9959-b0fe6c9e556f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 377436538aadacc7691035456549b47890eee45cd5876ded92dd9fdcb445b174
Date: Fri, 11 Mar 2022 00:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.11-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646958984
