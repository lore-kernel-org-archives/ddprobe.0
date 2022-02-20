Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66FE7179
	for <ddprobe@lists.linux.dev>; Sun, 20 Feb 2022 07:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645341984;
	h=To:Subject:From:Message-Id:Date;
	bh=HRwvI1d29CR3fzVTnzcOsA0CN5fk8biEVCZvWZGIWKU=;
	b=JNzE81b5ZthN+mA0ui1uOQMUV8XKeEYm3MJE7qqimB0w1sEkWeBCem+JjtohdMgE
	s2CCcU5jsGOej0UCn/dNRLYMV0IXIPN/3QdAdcyDa73OdDTC9MXjTEz/hN1ZYaHX7XD
	vscsAl1xt7pPIn206LnMA2+ebbckAjJH0lG/Bub4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645341984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=HRwvI1d29CR3fzVTnzcOsA0CN5fk8biEVCZvWZGIWKU=;
	b=LDMPlqDnLLzJx6WFbYsWpQyvzPQll3Alawn9/KFSmqnhvqRzakXG/ybvJ4xL7s8Y
	r1hPG3JNPL3O9y/BXRQN4GAMLZxa20MBszpcuYsLlTCfMb4Vvz8ZnT6X6WaJOLeXxm1
	700SnhVPsOUSw/Gs1QYzTuX8UHzUZ2SvvO3FLQmQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f16064831-c740f95b-ee87-47b0-83a3-778071a2054f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9fe7321eb0c4c15ce8297cec8158cfcb0a1440e4a55fb6ce3cef33cfa75b9f00
Date: Sun, 20 Feb 2022 07:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.20-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645341984
