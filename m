Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3742E314A6B
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 06:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773900894; cv=none; b=mLg1FqGWoR1MfnvnRxsp939v4n4PnJxqD9OHtyOR7VfdmY1QKvbQkwq2SlPk+sAkLiTkTYLYhdxlN4cyWD341kGxW7slrtsP6kPSGWOCuvWOBZzYx1aUdtFyBnDOR8t9CbT5LZzHLfn5ypABFjJpe3yY1nyMM0ejpVPU+/WkWAE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773900894; c=relaxed/simple;
	bh=zSe3b1xQgiFQUgnMAer9GjssmuK8IaRPr4vu1qGRX6M=;
	h=To:Subject:From:Message-Id:Date; b=gQqG/LGFEZSEv641fCc7M1+huDiSDsAKepO4mOJt6fBUDIhb6Ixzsm4IVjiF0Gd+nIh4Xc3gsMqQwfvnah8X+N1PZM8zsThUFmFzrg1Qrz6Gi4LUOH5hlcQcvf6Vq6KJ6D6iRarA8vHBPrP1XVIyRF9OxNbVVfzE2i0VNvuqUI4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J+vpFx9d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J+vpFx9d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A75A0C19425
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 06:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773900893;
	bh=zSe3b1xQgiFQUgnMAer9GjssmuK8IaRPr4vu1qGRX6M=;
	h=To:Subject:From:Date:From;
	b=J+vpFx9dFr++ip+4Si+6kVVlEUZ3nFY+UmDUmxtFXQJbD4QVLXhw3YllcjhvMpa/x
	 ZF+6s3ZbwZs6EPIGyOdkyMAbIcQd/i7heD/uCtxRosiZZP1EJn4zcNUm3fdrSoJL2X
	 qJAsVrEZZd6lzd5iVRAd0Sslww+rKUfaem8IQq8bTYRWjF1C46J1PHp12/eK4/L9S5
	 nshlriiOQsp2SrcYyr0HpILP/1+sieaURFftV6ST2KCZMfqkfR7Y/AYa5+08WROMoE
	 xJ803Vmr3UH7z1IBjGl4b0agV6FX7WD/kq9Ep7kZ33kIRUNSNeyWuoYWfNoD2/iTaR
	 AeEkYGkCIniuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94CD5107760A
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 06:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177390089360.5897.8710898171364925426.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9cde5503696e5d1f5062aaf65ea120a730176d1bcca00a3e4dd67bb8351c9446
Date: Thu, 19 Mar 2026 06:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773900893
