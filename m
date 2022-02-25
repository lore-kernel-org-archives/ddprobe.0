Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6542F7B
	for <ddprobe@lists.linux.dev>; Fri, 25 Feb 2022 07:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645773985;
	h=To:Subject:From:Message-Id:Date;
	bh=xzW/k6P1S+j3GQ+4SnVtDV9YlexkUpGNiUVcVx1qwz4=;
	b=ZaCwn/4MyUwjFcmfrBnLLbmJE6ueFriCCtaKZ7ylmPoa5RTR3UYARsZ/ZVGP+5ew
	F2Dl+TqWRtOYGtyJnB0BhquFfp5Hv8uDfUavHGkGkaTarcFYEM8A5k5dR7RBGAodl3W
	fHofHbshh+j/WTb051K7eZapiSUoB+FQI5AhCD7k=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645773985;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xzW/k6P1S+j3GQ+4SnVtDV9YlexkUpGNiUVcVx1qwz4=;
	b=MqVOAnz5c/V6/OM4Z6N/AXuuHkA5I6Drq/Cmu8CD1g1Y4WTgx+6zaQIyBLMAbJYe
	9Jja9N4rMtjVMnUDp4DpRrdnCkNw95syV6az/skS9Z149JZwww/cyQwDz4zG4BUKpNk
	j0r4qhw6ZoVuUnnx5JMpEwmNnX0jPP9ydFPaiTh0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f2fc613fb-0d47e2de-fff4-47f3-b505-dfc817ea5b3d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c8be977da74e5f468337c82665b4f78a96a2916f0687295413d77f9d3135e7d2
Date: Fri, 25 Feb 2022 07:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.25-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645773984
