Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2812B38DE0
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 15:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735744554; cv=none; b=Qeb9S1pzOmVDRPy7V+0kwVZjtvf2NEKLy/ir/03OWC4ox40wSvMUByfg4CLC/jk7vH7YQG8TR6oVoIu1Bfge52hk+xepgkyBIL/RJYIkWdDr3k1mab1NqAqj9OZqYlES8Ax3u/GslC3/xQOPHT6CSIXol0Ej94YYxBjyOskv7Bw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735744554; c=relaxed/simple;
	bh=FH/2MTc1sLXe+GiSJc5edRftv2Io7RPSLOjV0pFDNZ8=;
	h=To:Subject:From:Message-Id:Date; b=h2GGyccAb8axQGoUPMnlZjpPhQPoK6Fo3+VseNEG7xXp/w9SIi6UhXJ/fCguQqbtuiRSCnpekvPojhsvLt57Cz2tUFQLXVDL/SIYv9/4ECumNAn/lAzUIqAyOuO04Shwp5hKs2yKEzCU6y0fomyvMp6UcOofvai7SyPzEDw5L3I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YpuHXEmO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YpuHXEmO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A42E3C4CECE
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 15:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735744553;
	bh=FH/2MTc1sLXe+GiSJc5edRftv2Io7RPSLOjV0pFDNZ8=;
	h=To:Subject:From:Date:From;
	b=YpuHXEmOLmXaJOHFmOYKgKdxYM5Z72yHlRso4cQFBjMYvopUFoR6p7RX5GjEoDyws
	 bvpjNgRH4Zd/uJmONpNPSMC5U4/QYqbu4HHBzj41GtlJ2jlqKm56q7rwQrH4cI0bAt
	 23GLlY+d2HJ5Hu+CedJmKztalqOwA4X8zc8p+wC6IWaDjjWmRWLyyABQqxyabpMJON
	 E8n7O2No5Lwp6Suq69JkoPW7W7o/XK2gLRbl4APMzJ0fI/Z66pNoKD+alaxOj4sYGx
	 YXVrics+TLhDk9qXCe/z30u+sBy7CzX7+HiGOSI5Dadu2vPKD/IrHQiUuScApfv2hZ
	 rFqMOfwA2mLlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92263E7718F
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 15:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173574455359.26025.17683068796252739608.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5dbafff3db8e008e6658fa470485b1180ff2dfd82b1afc1c725ae552705986fd
Date: Wed, 01 Jan 2025 15:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735744553
