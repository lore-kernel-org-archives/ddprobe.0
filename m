Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6364F7E6
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 16:30:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713630623; cv=none; b=tAplleNK9+93xk9IjGvSfvFAbYymO8new/FLU/faI6WmiRngX1ZoJz5cpg1nY9lkWguwuD+y954mgoV/Ij6OmMEAaduJ+A1viRNIsGcz3FM4X1Uty16DF+2jCUi8Qxjb6Tzvh9oFuv4gNPmFZUds+7VlzjDk1nZN2ZOeku4hjoI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713630623; c=relaxed/simple;
	bh=g7Da+3kokJo1LxNiVHkj0Tmk2jWn0SS/7/ZFfoqFLcU=;
	h=To:Subject:From:Message-Id:Date; b=bKCUP5JDxPIcFqZoxvEEsm+MLQ6rztBIVOdftAsfjAStvNtR8tVVsuV6TL1FcsGDuxsW7ZP38YpRAxI+7Dkl4i4XnI9RwQEUlPKGUvV193TncsHGrQghPK06/nahZDAGx4+zwzCmIGxjn3fNlcE1y1N8VfcngsGPtruYVYtCz6M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cFzWhRVm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cFzWhRVm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6B3DC072AA
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 16:30:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713630622;
	bh=g7Da+3kokJo1LxNiVHkj0Tmk2jWn0SS/7/ZFfoqFLcU=;
	h=To:Subject:From:Date:From;
	b=cFzWhRVmtTHifzrIn6R4fSanWFwhNMdmlduiS8sYg2ZYz6Vb+PV5gE/LDqJ6asx+d
	 ZFpawSr0kFrOa4kc6078X7xFON4mga2KHB8FvQNgrAzF1E/FPPQgZDkqhViId184pi
	 DlFCluNujFONL+UuPhkvcbYNrSj8E4GifSTPbAwgC9gEnvkxRn2rlCMLF6F6SAYIwi
	 W7aZnGiUjNa2iAT3SEHGxzswbviSn3rfSTug9l59kUvGzOdB6HkHTO8rxkaWJMZAzH
	 WpFAB7Rgg8K/d0SdVOeZHRusviPxAPDj+rl0iaVD5pPpf1J3ntRRzABd4yVomBeCNl
	 OIdf3cPg1mAqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D09A5C4345F
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 16:30:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171363062281.27779.12566343331004781365.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4e12ea19ee46212658672a2addde916089beb4f5dcf8ef2f54426a82fa4abcd
Date: Sat, 20 Apr 2024 16:30:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713630622
