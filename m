Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A1462571CF
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744961995; cv=none; b=FUUoY/Ata4wD/SFcoGYSDL0d9gZrEffGJpk5kiJiGrS2wgSUFY7nMRMdhyZX2Tp77AoACDjxp2I3LFqpgkzxQbDDJWfDI0OTxsQvUcJH4innHQ1fY0/HWHqEtN/mCNlaFCQII70o8Vw/2UmvyRMrtcKKx/YDXojwaP7gIGa8F/M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744961995; c=relaxed/simple;
	bh=jgjvjRY8PqTZYaXbQc4wwh79TKkfeJXjGAdLSGppmME=;
	h=To:Subject:From:Message-Id:Date; b=TCihIsM1MRd49h8SrpghDPq2sKy17vloxA9QBzAqGbXe99sqouQdvurotVAOD2G7dm7eu/6izxRVKew4W9bOIF+u3vYLDRqF71Bs8NztUZZ1Kt3g6OC412++SDiAyTNU/1XMfxe5FLrtbu0bA2EWJgLjlXeQk4ODRc9h4Lp3BiA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AiPA3UcU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AiPA3UcU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4E54C4CEE2
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744961993;
	bh=jgjvjRY8PqTZYaXbQc4wwh79TKkfeJXjGAdLSGppmME=;
	h=To:Subject:From:Date:From;
	b=AiPA3UcUnoYwA7uqOJnmkK3hwP1YBo2FDkwlY7ZFToxzPs1uh+GaEy34k4jCYW7zr
	 xq8lZ+udYo3Y0ipAbTuEBWhiLqhf8nyqiA8IbfqvQQJ9e2AiqSIJhhbcHy/Dkut20E
	 PirSkyWbAK11fQD3aJSTMy3RPA/hDcGDrYgD54qnQp4PZOdMvkJatChZXUNh8ZoVj0
	 TSHp5CxtHpBoTOJDVhvA2C2F79YtdPzdD3wA9Ox7Z+PJJbiodL+j3zJ8ry/FduzUFf
	 QUOSZF7Qciutkm+K9caGT43vfYlBjjyE2xgPsPPgUO7K6n5gIzHEYylY3e5HNuIKif
	 vqTy+Y6T7k4wQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94F8DC369C9
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174496199360.17076.17063359031559057023.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5172173859746fb587e89a9808d79956ec0b0253cedc4d91b229876b66f16d10
Date: Fri, 18 Apr 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744961993
