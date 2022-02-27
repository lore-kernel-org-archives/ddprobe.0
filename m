Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 879727A
	for <ddprobe@lists.linux.dev>; Sun, 27 Feb 2022 18:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645987585;
	h=To:Subject:From:Message-Id:Date;
	bh=b/Xvf1qJ9Y6HaaT3mcrg8iDHocZ3VENwx3MAc2hbBfU=;
	b=G94lvIDXFvJW4CtMxF2xj+o/zuPuR+w/1lDgE3mzEGFMvu3GnNuI+eFUoT5A9kKr
	nlj6A+8Ti3lpcN15vT6D+BNEpJigKCtMok14BggCqZU7t1Jv3mkB06eUte0VEFrIFDI
	TImEPsLwKOLd6un2oU34isTt9f8KfPL5lqFszczw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645987585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=b/Xvf1qJ9Y6HaaT3mcrg8iDHocZ3VENwx3MAc2hbBfU=;
	b=jHM8NHEj6N+8y2VGF1XJDZg0PA1u4W4wIt/ckzrssKXQdy704QjJ0LGkI2xvgce/
	07HATsFKI69rfnbadzT5KZXX3VoXFqiIysAezynGffAoLny6sIJBf2DKPzRrmu0jBi0
	aMJ/aeBStAn/oYOqUcxfjTqm1415WA0CL9dlcWe0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3c815b12-082b59ae-912d-4f9c-8628-3f5eabfdafd5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 610c083e066423c769a8461fe487b2387cb14feeead8f79142446755ede520bf
Date: Sun, 27 Feb 2022 18:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.27-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645987584
