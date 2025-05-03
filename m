Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38DA2267713
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746278394; cv=none; b=FjKCHaGbWTLpsJ4iNq0TD839F3ZALylnPrDPS6a0hKgNHcRH/Y0Lx1DPdBlNAeoVPdEhunjKZQbQCxkZBviWGQo3k15fwznk6aKQtbB3wulemrsPsIWStnVmffnc3yrmfMk9fGTNudcCU/EnqXmTJ80xqPsviIzEagA6oHci+mM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746278394; c=relaxed/simple;
	bh=bPHSV7I2J6A9KNnrFCpZZk5fdJtpvJZQwngKWiex3K0=;
	h=To:Subject:From:Message-Id:Date; b=D2/XJjXAld36YmAnTv5i9Vcz4uirWgZZXvmRecWHwah33mfptvKojNBlJmU7ww35hy99/JNKcANCveAM/9S6jHanilHVeUjTVtCkd+js4Efs0WM3U4z4MF2vMYDG/ppTkvHsslZoy9+v1KPPSk42nrgIuZ9BOlUAW8vNgRXNA/k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sSUl+MEc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sSUl+MEc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F40BC4CEE3
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746278393;
	bh=bPHSV7I2J6A9KNnrFCpZZk5fdJtpvJZQwngKWiex3K0=;
	h=To:Subject:From:Date:From;
	b=sSUl+MEcGpKfPRoOKvbHT1r3P5aYN8eXWt4xzxhTgLTp/+VBxGhF5YPNb98H4m2SO
	 k5LaooDIHyQ2JQ/NpPc4i1+xUEg1SxqzbDgerRG1wDpVc7p1wMyp3Lz/S9qLKyTD93
	 vYqmcgHNruyLwBKf+SJiV441b696mZTl1dDNcsBmkEGC6Y5wKIRJJqKO8AoIeli6N8
	 ZjtGsp2uKPUppp/l0D/mlDy8Q892swYzCKITIcZPA9DG29VBkKMheX4KFRMNUDLGZz
	 N4688QNquWIMu+LO4BjrQwXjsRnh5JVD11eB3d1vHS3ftEVvnQazm7rmm0PsR5qV0C
	 LP5ltwCZyI/Bg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DE6EC369D9
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174627839357.16728.6331678279507517982.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99d7899ab4fb4c2b8a50cd954f6433dbcbea3e53004a2c3c5242901d4069d0c5
Date: Sat, 03 May 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746278393
