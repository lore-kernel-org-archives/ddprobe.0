Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76A2A2576
	for <ddprobe@lists.linux.dev>; Wed,  2 Mar 2022 06:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646203284;
	h=To:Subject:From:Message-Id:Date;
	bh=AwnCgT8jAfsp2Hh3ov0PrWFlj7dBvGajc9404lUrACM=;
	b=hIJ/4JDvQ1T5Y7Bp1/i9l0IWuZGDpUX4NDEoNQfw5DYKqnX78KTWykqCH/YszZNL
	CzPARrgxW7B9oat+DhCYFic+2c7Vp2ldQpjy89LfyKDterxmf8p7GK1oQXK4ZQGXzdN
	zHtNJwKdL6ahvt22CIR/VTdNVAOJ53w5/s6UG8FA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646203284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=AwnCgT8jAfsp2Hh3ov0PrWFlj7dBvGajc9404lUrACM=;
	b=jax70vDu6O7JROGeuQgRURmQli8Gl+hXUMu6bjobbBeGnBJHlAr/MAythddrZ40o
	OTMrN5wnGSbyz6Q4oY7g1YDuQ3F943/sLI3tSbTdrnDCT6oOJqNQIJ/VQfkfWcnWdM0
	3+SOd2Dszqx08vH/fFdSmMYM+MNy3qf+QHoDPAeo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f495cad26-105cd6f2-fca3-4d38-b111-4144bb248792-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3848d7fde96ef9f70c811644eef682837dc3b9079cd54f64f92119be44ed660f
Date: Wed, 2 Mar 2022 06:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.02-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646203284
