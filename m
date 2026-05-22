Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 381A62BFC60
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 20:42:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779482554; cv=none; b=FGN9wWUyjGBxCpnWtihA70tZoR3XoSPqQYQ9hPVJo12FQuT9OtLYCOaSOrFETcTOy8MmhTa+gzXubcbo0s+DhZdo/rWCkPSbkYnlLMfDodTJSZd/1YOMpHBGb+g9r8S21jnoIA1HjrRkD7x/yOqhetDxAwZXgGMLIVwjGuTYPos=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779482554; c=relaxed/simple;
	bh=2UIvCwvLbxnZfc6+xdtEthOAxBZXV8uJY5qaVDtLX4k=;
	h=To:Subject:From:Message-Id:Date; b=YxJbHMUi1J7UwIecmtgVcP4fxvQYUqNXmkVyPf6iEuCnBFww7xhzr3Bm/r2Se/M/XO5RkgwRJeq+/CZ4y5AjfF0wBa0RF/pKF0/fx5FH1EcEpdhhLNmn0m3f51I2A8Ne15EvrTvZSPgVzakDxo6nUfJ+0/XUw9YHK0g02OkegMY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qr1phvQY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qr1phvQY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C875BC2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 20:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779482553;
	bh=2UIvCwvLbxnZfc6+xdtEthOAxBZXV8uJY5qaVDtLX4k=;
	h=To:Subject:From:Date:From;
	b=qr1phvQYGDWvabIrSeo5rinenSmkh+UNS/WakWwFKBRaS2mzZfXkHUrTROzt3luuc
	 ZdWN4xiLudS+1G4QG1qnwV/wO9DYlIQ5UYNjFMbUorDQxbcjSGYbJoij2m7ZCWG0fS
	 SqrVh/jaTJtUU/zYeAVeDafCmDz4jdU/Hzon27jjEyAVF5RhoYuXVjgk2gNBlEJ49N
	 QxWGcBWLaaxEuCJAfYN5IlIRYH8pAXlfExWze1P0Ch1GngxNFgRXk6OeDLUcF806AO
	 b6jera366SYYla0hbqwcT6EpnpLQzzwFQBYRR1e3j/L6e/VRwtacWw3HIPebMHCY5z
	 ExmowTPMHX7Yw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEF5BCD5BAC
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 20:42:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177948255370.5294.10494838205249485289.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54b73a4708fca25df059ea8d9f98d27bc2a9f47a0c5b3cf1487e86b681f95407
Date: Fri, 22 May 2026 20:42:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779482553
