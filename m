Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27E3727A459
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747229994; cv=none; b=NqSYotLoiq1c2W9AZWc+l51OQ/a8TwtF+46uKQ5BiP8UgEYmGnmBRkx2A9ExBGAdzkrPIJ4kgmQ2Prycg9TybK73D4PQPqYJNoc58hhW0Qr6xTxUy3cz3NhV2R4SF7pBJwO/mdHbA0XhLzH1f/LnDuUJIE6+6ppdKJRC+o9fhyE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747229994; c=relaxed/simple;
	bh=osWj+x4D9TthsbNpIhtyVpEgQPwCl6xKBtI3+7At+0o=;
	h=To:Subject:From:Message-Id:Date; b=eQy/Ea7iKXoYELDe8UPCaRCXlPymgMG0rRD1u7MSKd1T3ir1qzhwUQbZWUXcLOVVTc73Xra6xSontkbyGqk2BQeqnG+a+4Av97Q6JUdkLf5f7bV9LEcK2qF5lwNK6t+ZYx+Rx8WMH5GoLzjZxw5YfK/oA2xifDE2fkesB9GMdm8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D6Y3rAQy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D6Y3rAQy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A33EEC4CEEF
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747229993;
	bh=osWj+x4D9TthsbNpIhtyVpEgQPwCl6xKBtI3+7At+0o=;
	h=To:Subject:From:Date:From;
	b=D6Y3rAQyvv50Xy6Yvg4V/3OdRBcD+72xKESHIoYu3+sp4LJ7SgDOlLeAwTIlG/iY3
	 Dd28OxqtZEb/FJmOsvQEcBZrqTJZzHrCO7U9AdpqdsjBbuoSbknHD5uIHvn/PGnGRA
	 8use1JAkWQm9rngJ4BXugdJfhOf32zVhbZg8U3N32JHM6Tf3JXD6KRaGrSrehgZlfK
	 IKT+LXoFOTAGBTaFYDuHdLLdztkpxSFTuQU8aaxQyPUpHN5T0Fc6LZHeOImmyPxM7C
	 PLeyTsHd5dDBMsyP+/DRlSQHPdhQNycKmkKPrzXjlyu2woENaVh7pdHS/aBxS7zR+h
	 h2nUPSlvSVTXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94341C3ABCC
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174722999359.17050.11657735751988013481.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 747d670972899a8f1102681aa3a8892d292d1ca22c559ff6f1c8f618f7be4220
Date: Wed, 14 May 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747229993
