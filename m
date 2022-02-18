Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD1801FD3
	for <ddprobe@lists.linux.dev>; Fri, 18 Feb 2022 05:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645160485;
	h=To:Subject:From:Message-Id:Date;
	bh=vQpy2DyXRMaJOHOD9leBFTBsgTHgdUENPrA+tMjiJrg=;
	b=mcQiiCBf7nK6fx6tFd8+fPGGWBQY1svXrodSKKbHEnwzk2ZSTQT41aDDXhxZRjrX
	WGvQdL+SplqCdY/Mq7ypQGzzHXMHvu7l3A1zsAAXce1CGA2YuK0LjzqakZcgtJSf4a9
	jmQPh3obPuxUrYfxMOXPU2hvYD56IS3pG2B81IUk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645160485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vQpy2DyXRMaJOHOD9leBFTBsgTHgdUENPrA+tMjiJrg=;
	b=FyrFQ8v9cgs+pf3e1ksSgGaVo0YEm7c0KQGuGMaP7wNwD5M76QqTWg0/NAcaVc8F
	uElh6zyI/WVBwLzDQAzYOmziQMlOfspo/s1WNMMY0EKCNn6R2EqsVK4HZVouEjvyL1l
	7MoFKqwwUSc9Ug+sl6h4lgseEuX44dLVR6kJm2I0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f0b34cfbc-2ff350e5-a0fc-48cc-a03f-13a94805ebb9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 84c136d0b8a630d61d9cea7a4d38cb15c85a13e8397b6c3e20947b79460289c4
Date: Fri, 18 Feb 2022 05:01:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.18-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645160484
