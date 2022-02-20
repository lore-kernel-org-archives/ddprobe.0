Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A2B4C6130
	for <ddprobe@lists.linux.dev>; Sun, 20 Feb 2022 22:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645397485;
	h=To:Subject:From:Message-Id:Date;
	bh=nzA5sB7E4YUtspF0QZzCN8iqdyf2OwBoXpIfMOGCjBg=;
	b=FRVE7Qi+P2n1msGW/CMTkDx9tyvHxlWwbkozqXeeQFZb8ytDMmoZ0G5pAY5RkUta
	efOihyjW1MX369EWhALRFKLYtQZcj8w1TdjYaOyB+WvNQIs0Li0VvEBHlnbMvXBPquA
	/KFf6Ac5R/xbgkJNWSDKtlHtJ6cu0dvFHh5FAb2M=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645397485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=nzA5sB7E4YUtspF0QZzCN8iqdyf2OwBoXpIfMOGCjBg=;
	b=gzOJZtAmfYK0CxjCG5jmwswCs6CWvp6Dwuzi30kCYRucN0XoOeV5lFTT8Ef+TiQo
	Szf34nyic7384z6k1GZm7OGvrrZxkSHZDyg6mMxoaCr5b13UO2mYhJ4DIL14om3JV+M
	sH8QCVaim9Qn6xKHBIgkp4vDAsydIYaYIqL5ONDI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f195524ef-da28600e-812e-4c85-98ab-3c48a1445d60-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 22b3de78070ed9d908b02077e49b7bbe29fac137c4ef42eca657a15673b86a90
Date: Sun, 20 Feb 2022 22:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.20-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645397484
