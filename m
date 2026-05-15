Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3636140629F
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 09:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778838634; cv=none; b=Jj5KSDFe5Id6nRFzzyVFTyFAcLtVoKDzCvWnHR6kl+6D/YJeOPGwIXSFiJERi4Jp61fSzMOmZvQC/ZWYDBhvpjvNpblgtHeb9juywvv2zoBkWNW+kJNoXzZoVHIyVzDozaprgcbnlkL2vCeD/6Ekq8WXHzxuFNJb/UIQO9LmC7Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778838634; c=relaxed/simple;
	bh=wBmHSWuix2DwH0bj7bNc97TwQp4t8j55timtMNQOVm4=;
	h=To:Subject:From:Message-Id:Date; b=J60m955B/pU+E9Ud/fen9fEE+pDvHtyYbuCtJB7px8lU+JANRZI6NO1XiSqu3Huldfz6HGO2Je5nn5ZMKRxv0z8VpQcn9ZviQKlJZNrQzMEoyeESjwLHJDfv7tvW8dWEa7b+W0aVqFXzAR0G/LSGLuo5a7P6u7ZzbarQSs5Alxk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rC6i3ddL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rC6i3ddL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE276C2BCB0
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 09:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778838633;
	bh=wBmHSWuix2DwH0bj7bNc97TwQp4t8j55timtMNQOVm4=;
	h=To:Subject:From:Date:From;
	b=rC6i3ddLUVmjee3Sd2rZR0szo3elrk2oGA6VhkhLpKxXXKGEDaPs0Fa1Onk1UUGgu
	 fyU92HA3XErfevBj9dfjDnaeKu5c6swpw6bFWTaUHDoNeuTMVcV16fLMDEJz9+6p+q
	 269+r47zW+pyeOaM2yFTfwNpILv3HQZK77vXyqzo37oJkZd4Ew2+5khGU70CKX+v/i
	 TAbxpWIZJ4pyzpjCl7YHI0hSF4ooEUPO+4s9k+1qH/YmNsRuilLhkEhp7M7xXNb3nh
	 kF282LG4yqZZUX9YU/s5XvJDbRzKcpT7jI8cY/wDQfyBBFuqa5gNb1GRt3GE42cRHM
	 NhuBByeZ4IE6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFF4BCD4F25
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 09:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177883863368.2891.14159333187310516087.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1498f611f44a9d46c72bd93119bb691304966e9ceef697b3660a39bfb100e6ec
Date: Fri, 15 May 2026 09:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778838633
