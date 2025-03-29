Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57298149DFF
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743287994; cv=none; b=OmnnBkt1GJ91rQJ3xQa+0X9sO9YaPT+J2BQ6tUvbS9xtGYtCDroUd6wxkEKSUGuN+G4pEihFlW96yypPcFU+kNYzt88OuUNJaE6tJ6ZxI0c2DCwxbi8bCoDHR6TSqCb+qMTNwPRg3xGSgQuvJA8kzLRz5jzYOOD0xqKWdAQ9Gf0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743287994; c=relaxed/simple;
	bh=25YpnXQ9YeGJLZ6zE9r8SaoaCw7OIRU3G1UC2VieHB4=;
	h=To:Subject:From:Message-Id:Date; b=Pn9Ffw1GirP3Q6pAE3wQX6vVmh3reFdwxr2meFReybZTI9oQfuRJQPE+Cn2sE0KE8A69H4xGfColuCPLz34YppsQZ/84g4sJG1zLjByWHCvtih+a2efQhsfrdLTEqjzuVRWWDIGZg36PsZPILujWOvZTIKDSj5Jx0lvqdnsYm84=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BQg4cNrA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BQg4cNrA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8578C4CEE8
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743287993;
	bh=25YpnXQ9YeGJLZ6zE9r8SaoaCw7OIRU3G1UC2VieHB4=;
	h=To:Subject:From:Date:From;
	b=BQg4cNrArvTff7au+jVOxg/3BlR2P0Ak0vrLOzcZeBK4e1Z3IBzp0csy1TFvQjIy3
	 7gvH4TFVmXBS+1gcWrHGhn2hhUoYBvcqiYcuJnrvLFM1V3jAqhXvZnC/2raZ81mNcF
	 gE3CyORjTHe3hcu26g7lhuPadE5JoF8vAiyWPR7dWc9y/MPMpun6whvSW9qAPZ2Nmh
	 NfXJerXC6mStHGQ9A9Llde2/SHtbJrku6d5bL6TpnkxoHxUlSO2xsHDGfk5bs7hLBh
	 p17aSUjcPCCia9SOJuMu1eo/KlLwmK08LIG1PXor20+bHaOPnM/QRfpOmaMB8TfPkn
	 AlzADr/g8mrtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B02C9C36008
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174328799367.24856.17311883144710946739.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: efc3ec4716c329879b5f8e1fd1b06cb10169fc64ea65542f4a7dfc7e9be52748
Date: Sat, 29 Mar 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743287993
