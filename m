Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CCD11A08A3
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 14:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724769354; cv=none; b=m377mxNa76CupQ3BaF2D7JD1SIA5oxEF1PugWumSVmnR3vybXvmx6wwSKH9F6P2rNfJZxVqm9KN71uX+a8ttonxQ9LeFbjAy+VKL7Bg3NA9bJFbhizPG95TrOc8DW8FM+32taXzm05INjr4zDSXgzvyWQOZ3QJ9jH09Gw06cUP8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724769354; c=relaxed/simple;
	bh=Ybg5TkWlkplUFY33mw3NPc67kLBw6uBu2uN1Irtjgik=;
	h=To:Subject:From:Message-Id:Date; b=fQwlvSq3pt7xp9v0S0cH+u0IcbMQRdrkAgVBgCPrOVtqn9WX7wlaDRRbbZ9GSxkIlw6SfFurXH/BgvzGlQ6fNlWvgj42WWpSVbU2O1SyQhKGOaRdAicwEGAAllhXBtyrDELMOPX96+kfSbMmJm4U1mfyPbaiMgcmQWvsnVjpSHo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fHaAU5bq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fHaAU5bq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B81ADC4DDF2
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 14:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724769353;
	bh=Ybg5TkWlkplUFY33mw3NPc67kLBw6uBu2uN1Irtjgik=;
	h=To:Subject:From:Date:From;
	b=fHaAU5bqVPKHArsKs8C0ZM7oopReHHV1Tqcilmj26bTujjc/H7IlrwZfg5EMTfFPB
	 sNOLvGnm0JpHJQ7spdMlHi9nHNI9XQt19LGVyimCM5jaSjca6+pwQWBPWUgWiMDUzD
	 nJApXBDHi0K8eiGUICut0uNnBEwo9hpkG6kpBnENlHbdELnlBUxQDOjw2c0r3OKfAg
	 iPp8/iFbtvZu4MEvV+gULcIbAApYMiSRWHouf/jP1GQO6bonU54ICVS13ZnoXpFPF3
	 59q7hGvhk0a19txV9ubwU/Ux3ggl+0t7MzdscXcA32vLJtgWrtHB8HHIoGqesBiAxq
	 TlEKqvPJ3Z7iQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5511C54734
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 14:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172476935366.22245.10831683868692940467.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f067d48b8e89ad4fa53b3e6c705305dfd215aaaedf850600323012026969d502
Date: Tue, 27 Aug 2024 14:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724769353
