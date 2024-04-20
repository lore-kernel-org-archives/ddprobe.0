Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68E8C17559
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 09:20:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713604823; cv=none; b=bFzMvP1L0x6//UOyiztkRNhK7rvY+7dvtWiB7LYNedNDGl+QEgGNlf1+osUAAW48qtrb1weDkroLDjMGhUIJccatB+W70kzPoKuJOTxbIYySUXajMjKvmtwXHMWWUSBV9hUW/+2cv3cGtiA1pzfQ0o8O5Ohcdhm0+EE2hvh8CYo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713604823; c=relaxed/simple;
	bh=BfegLKxcvuISQ/wUbclPTGQKPT2RF0HC1ThHELo9Nt0=;
	h=To:Subject:From:Message-Id:Date; b=GCnPggwwPaMXpgRZZmjqQvZ6BCcMMaKOcK5n1wVzYfa8pOFTXlY2xepDgDyn0zS34z/YtQ8ly82FyhDdLD/WDWdH+wGHvlh3RpZqp2MCYvLndcq5ZNPMeZaVxPEcx793/BEr5sH2X+2EQ+eVjAjS63Y09X3CUDpZx8EDCxci2FE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mBv/v/C9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mBv/v/C9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F05B9C072AA
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 09:20:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713604823;
	bh=BfegLKxcvuISQ/wUbclPTGQKPT2RF0HC1ThHELo9Nt0=;
	h=To:Subject:From:Date:From;
	b=mBv/v/C9aHG7kLpooY8wjQasg4FdzEcmdolOgG50U8F3MEYNrdfDEI1L7+aaPzpgI
	 Oegu8F5jLzGtNFfIXtJzzurmhpuaABAJMxV11iQusQEm80BQqP++b0Q0aO4qeJ3HXG
	 36UgkkFLsUrjA34TFxTT7bkBG9dONRnIWzhF0DPL7IS1OpUqgu3RO5HmZSyQz/vJjp
	 z+q0JrgrtSubLBLT1o4We6DVT+PXmjh4RlA0H5K+iesGiAbP5+NZ4HRoVupaw9VcYa
	 wSyxjQMS6ALzHRqBjSZ3GrEv2MU408L7bwERK4y/r0Pi6hFWDIycT3lbIYAxmq3ylP
	 hLhzaw0keA0Dw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D0405C4345F
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 09:20:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171360482281.6157.15370834660704650562.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 551a7769584b55ba3867fb918ab75946e221a3b563fe7391c895e4b682cb27ae
Date: Sat, 20 Apr 2024 09:20:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713604822
