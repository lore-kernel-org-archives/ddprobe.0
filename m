Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3778E7D
	for <ddprobe@lists.linux.dev>; Sat, 12 Feb 2022 21:00:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644699651;
	h=To:Subject:From:Message-Id:Date;
	bh=BTAOKJhorF2atMBQ1zh2p8EbyFTKJc+wFQTvczo5tN0=;
	b=VfWQhyMyJI5Ce1W5K79p3FZzfXUntP6pWwYrd4NjIRf9pyggk0hvIeuGSJztVML7
	l37W50F9GWzHfIomivBGJxwHf80pe3GkyBO4zHjM1vN8LFZnfXDhB+EI76I081e9fuC
	v116E8IPfgogiPsCevN0GeFTzgJ/rk008IYKkWiw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644699651;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=BTAOKJhorF2atMBQ1zh2p8EbyFTKJc+wFQTvczo5tN0=;
	b=RhY1LrnR4RGHDlDt/NAoxBf30Uy/6yWTqjNTEHEPT0xIXxXGXtuJUkm68g0YZt3V
	0hobRGDB4Ou/H0gOk1DV+KUN12NeMAlW/m1tLLPALAUj9CFkViBOgoJ5liTp9pSsuJ1
	0FbeGiVam5OTE2QM1q1ihtEyy8AQtL6EVA3CEK1A=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017eefbd0cf2-9c9fd043-5e64-45b5-b2fa-31544ab285b2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7e4bb5cd18d485799fbda7a710597ff45b19124df30a97b3325676040107db90
Date: Sat, 12 Feb 2022 21:00:51 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.12-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644699651
