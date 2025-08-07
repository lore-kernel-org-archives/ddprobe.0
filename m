Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E98C145B27
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754540394; cv=none; b=JkMaUKVhdb6v9rJ5VvqzgvigkZFC6cM71JNJCmnIPfa5S3ffsvA9DzFszeOIkpwE84OJ33iF5Nvb+dlYDiSsSoIo00zsnAVu7Xeg8hrpKnDIpDnkOULEbgFBkT3x09LczuMenleyaWXZvie45HjLbWo/q6GXnJjRJDMdP1pX4Rk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754540394; c=relaxed/simple;
	bh=QI/WPxY9OQZ5FL/jhfaM0V6SpvG0W7Ffm3wCvjZA97E=;
	h=To:Subject:From:Message-Id:Date; b=kFvGHBIegxhrm6kIvY8VO/vfrLszsxSRMM32joNqDTFo04y8PJ7EfJu6lsfy2VL3ZatCFLkMI5sOmILmvGWjRWG+kZNkjIxnNp/ZYgRX69trH+abLuntxvXwOFWF9UFFpVWIt+j0W/XqvtSPYih4IUmEbXz+rFa9uB5Ntp6Vxcw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RdwIkTK/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RdwIkTK/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABDE8C4CEEB
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754540393;
	bh=QI/WPxY9OQZ5FL/jhfaM0V6SpvG0W7Ffm3wCvjZA97E=;
	h=To:Subject:From:Date:From;
	b=RdwIkTK/L/FZtniOCnyrCMtXVA1oRz2awa+9ipaL5gzvT43lorUzcT1B4Wy1QKhVW
	 aG3izpQUrTOdmDcCMNBJfLWnpncTTe3cPEDgRlzEbW/rDFQcPqrK6lOYI5pGwyYZBX
	 TJM9bzmDpCjryZAms9UFeZBZyWkKgTOcsWKdY4rLR3R+Eha2+VG430M2PJInBaPd9r
	 oRKg6uJsrR9ivLc+8SX2uDaiG9kLEIMcHThSVx76b+QaW8xfzhe3SkjjJgRM1EMglM
	 JyRFl6NX3xv/GWq/XceYyw168HxT7MVS7VWcM0KzkgPGx8/RrGUs37QsOxtzIPtVaG
	 hLeedvlgaTdNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97889C87FCF
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175454039359.14075.2215326266517260706.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03b8706cb46a8d6de66176ad4ab68973df5164940d127be7a02993e0796ea885
Date: Thu, 07 Aug 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754540393
