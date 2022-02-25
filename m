Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9545A7A
	for <ddprobe@lists.linux.dev>; Fri, 25 Feb 2022 09:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645782085;
	h=To:Subject:From:Message-Id:Date;
	bh=GauFMLKrRUVHIpeGH4Sp3ZCgGMOfqVm6rpDgEITyDqE=;
	b=QphCEZuH5M1Y6f5Azq3Pe30IjYK2oAe86EGZioq+4IyGYQjRcs0ZskNWs7XAyeR4
	JKzRT8SGJx21/7i0WPugAWy5RQmOy1ElLLkwMJ7d/f6oT17PW2t81jLmZSHFUQyv44T
	yLsFySZtYb7drlSaz6ET7mBAYYkj81M5pYqAmLlQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645782085;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=GauFMLKrRUVHIpeGH4Sp3ZCgGMOfqVm6rpDgEITyDqE=;
	b=hBD/wlSeKBMutkwd4jfyysWGOhBNfT8L+M+jcnFgPY0pBLedJSG+MYxc/nhoinTc
	E/tdo4d/1Ha8XIkEqNIJaRE3nR1nlMLgXgoc+oM1ItoVwqp7/Vvxvo0SiEqJG+6Mh08
	o0Vae4veDoMrafB+I+uZ5snSkrl8XGlgfqEQeyjQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3041ac96-c17f189a-45a0-42ff-9f1d-e04f61d9f22b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 210fbc4ebf14c56882421a12446657b13c56c2bd48c0d28c33a3147dae5d55dc
Date: Fri, 25 Feb 2022 09:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.25-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645782084
