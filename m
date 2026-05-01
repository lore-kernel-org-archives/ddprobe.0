Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D740316905
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 19:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777662454; cv=none; b=ZQq70Zt3ybv3cOff8sdPM5n2FkLU8HhUcY7xbS4aj0u1Gyl15G4y92hPetgfl0FZsgmHsfN2QNmMrqXf9aGhCXCX4lZ2GqcQ8dQTtTo+k79Hwh1Ii4NsP4IXanidB01Gzsez+A9LeS63HKgV9bpWynLofYdn7biYYLIvxOyo5Ds=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777662454; c=relaxed/simple;
	bh=JUcGpfYo3XHNRc1/94HYdRIr5yg86/iS1Qrh+Yli8RY=;
	h=To:Subject:From:Message-Id:Date; b=aln9K+fO9tjsbooheCBrGsSxz/g0qg4mQF+cU/xehoqeaTfBYPSTq5+9EIrnJA3xrGKIS8WKxQS7raytwVCh/+C4j4svMiLaIZ3bmdHkZRFv45BsKqoqFesEKicEZGHuZY/KZF9eAoO2KBiuIh6DPm408DDbvBTcT36xTuBspew=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OcenCqD0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OcenCqD0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9355C2BCB4
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 19:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777662453;
	bh=JUcGpfYo3XHNRc1/94HYdRIr5yg86/iS1Qrh+Yli8RY=;
	h=To:Subject:From:Date:From;
	b=OcenCqD0YtWd2fNgVsQFVvbBuG77DXQwr47nylUs2zYQJL4zMAGWXxzr6bs8KT0eW
	 N9Ohr3ynGzdVMBx9IdJjII7t7mUW16gU/Ao24tKcnBLKXr1rYKn24h0aEAGuTfEIRM
	 ZBO0bCTW0ehvN5Iqy7LzF8XVIXG4mMjZ0E4TDPE+Vfsa6RosPCnlhfrw6aQZVAMx19
	 PxMpEIgmZgnzrACX5EmBHtQoxwD4bjNcoTICT10ti+u5n0rZYrQbY8Cae1nMBFLu17
	 brJgJgR+mmLZKFknLwDBeIAmc024GtveJe19ny7C1CjFJl+aRrqMLdkTux2JDGC+Gd
	 eKkFpRgKKpInw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6113CD3423
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 19:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177766245368.565.49704310922078212.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 911495367a385a34e62a6ccbaf3fb5d2d5b15d023d285a179abaee47052cca2c
Date: Fri, 01 May 2026 19:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777662453
