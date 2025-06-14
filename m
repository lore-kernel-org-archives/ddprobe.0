Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 401112D9EEC
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749909594; cv=none; b=osiK6lkEjYmco8jf6hkWLHCd06wdfkfFXFeHAdUd8Anm58d3UuoPbCL2/SQZW5xOBCg1ANFDeBvtYKXu3rGq9nmFTJWzgWHI3tyPJtl8Eaw1nvBQaoM/kMLdJKb6MSkpGfllFz+uiWvWNB3vsOhiCV5ogBVpFkSEpCzjQ/Fnnvo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749909594; c=relaxed/simple;
	bh=2jKW7Rx/kLKfFLTVq1L3w/H5sw+CPgiv21+5o0h1D0U=;
	h=To:Subject:From:Message-Id:Date; b=BuA5/BzaiMN4pxW9IcjY1Xy2L0pkhRdiE5lOcswjjQfdXhf4ljBTg7ix9YAKvK/WANZZ9xdZ4/04OIjmGlFOSfrGFWBGfDtzV8eywZILtyiydoJxEi0nqUfdGIGN2xqSlp85suolGCEg2nQJKOtriyUc2TV2vsSVqUugz6Byuwo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VmcbqMuo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VmcbqMuo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1A6EC4CEEE
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749909593;
	bh=2jKW7Rx/kLKfFLTVq1L3w/H5sw+CPgiv21+5o0h1D0U=;
	h=To:Subject:From:Date:From;
	b=VmcbqMuogHeO+vpe/2+m8KHm2FLoEd2czOzxdDgTwU4WvEMy2q2jUmz8T4lGxG64G
	 gvhLUU+RC3844f06/Q+Jotg0dx0hq+S0YBKrjKYYMYzwIC4aFEUEK3EgbXBNh4di6a
	 BDLHESJc+CDhDccBSe4Sn2ph976w7ocCfifK4WQ1q5fkFvNa6hjYxXzy4hgWzdOQsJ
	 rQnb3WuMmp8x8z8zwtFiLG4oq+hMhzSr3EIJAq3JgB3f9TWppolb37JRxsPVFEI+vq
	 x0AA4hqLBOF0GWLOj85kCordTdRFv5K2zKRsmJyRFfFk0aM12uLh7P6G8mC6EtuSc9
	 wWdPwCDqekauw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 904D3C71141
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174990959358.25092.8712666852528102202.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1815243b2440c951a79bc6614a51c52d474ffecb0412b904a75cd16d122956c1
Date: Sat, 14 Jun 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749909593
