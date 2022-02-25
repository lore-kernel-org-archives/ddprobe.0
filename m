Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C02C610EF
	for <ddprobe@lists.linux.dev>; Fri, 25 Feb 2022 00:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645750585;
	h=To:Subject:From:Message-Id:Date;
	bh=O6T4t/CDytK4AhJM0gF9ZGodv4W0yNfo1OdKyRne890=;
	b=Uu6/U6Fn+xIZjo+BCK59qAwB/cdbJVshNz0MoXK1M5mmj0lEdmDzyTnbNynd0+KR
	f47Pu5QPnFgXa97HubO3wir9/Qiby6Dt/GUZaHX60ty6EZ+AsG03VkQ8m+lxpEYsK/o
	Z/s4jWpbeWQJImsNBt8p0SLzg95WqbsRGwwrHtok=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645750585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=O6T4t/CDytK4AhJM0gF9ZGodv4W0yNfo1OdKyRne890=;
	b=k8jBpzVjJGlrKF7Wc5xMYXW85puRk3Ey/mwwl1LkeFTRIQfP815sMQ4ZxfSEsQWB
	0aC41uso+/+nehE/wQjWmigmYPU3kKYa3vP5/oU/uodlHGAcYAoDExSg02y46/EOSm3
	C1HBwQTx9j4fhKvNMHIKzjdEuFT8uaEg2+nD1d/c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f2e610598-4e3d0b38-589c-4e85-ad0a-4b79cae32f81-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 21c87da2b1d298b3ffd6cfbe37861977258a3529033aa5fad4dd9d79f2c2f8fd
Date: Fri, 25 Feb 2022 00:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.25-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645750584
