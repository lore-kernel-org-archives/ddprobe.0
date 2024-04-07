Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E266863B8
	for <ddprobe@lists.linux.dev>; Sun,  7 Apr 2024 06:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712471897; cv=none; b=kWLX/kvdLeQobMcnhCXYvs11z5YPjefwER3DxGZod7AXfMYdwASuPo6NrpSEZ/x2bJCwUomnKJMEz3h0phVc2BHYEDP48JHLuPdSL5T+9BkuVpv0QUOwMbJTZUu30esZA4AIX1h70EiqGs2CgcmlXhVyZondzsoGhzQ8g/UQZp8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712471897; c=relaxed/simple;
	bh=csGFcjC2IsEPRN6HJ5PmnBKPAvZmjTxIFzgtvA9WPCU=;
	h=To:Subject:From:Message-Id:Date; b=lAUb8QY+RqiBWAJl7oLcxBsziGsR94UcttyebRZ44TlyHtMJ0AEmpu1NHJ/PpSCrVJgmAZpkeTaa7YWLsunLCMQax5kQunZcd4ukkf8aRN9/p1BX8NFPG4IzQ+h/r7zXsoM0XZphUUsqEdLb1GQSWE9nMPUIJAECzgm7R+CsfGg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qeA0rz0v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qeA0rz0v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E6DCC433C7
	for <ddprobe@lists.linux.dev>; Sun,  7 Apr 2024 06:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712471896;
	bh=csGFcjC2IsEPRN6HJ5PmnBKPAvZmjTxIFzgtvA9WPCU=;
	h=To:Subject:From:Date:From;
	b=qeA0rz0va4A9Ky593SffG3uh83wbmZfCE8TvhhMBKoa/U1yvpmquB6mp3yla4lW0h
	 7V4y9JDwyGQ3RAfnIVVh4aqZIPlQFslv8DEaLpJ4DYEeHdNhTNG2ItuzqzGYPCRkTK
	 5P6QEKFc6mdZP5kuB+h6svJFJBlpDzAYnt2/Yx/+YWjmGUn1ZUxA1DFzRAbJVDokbm
	 k7XnJt2L1Sxb+MqA+ZDE1vOqsInUjHQMY/edoFIzyB1eOvcNc2Rl44+2fhpKC6rdF4
	 T/gkleICj3BiZb5DmGolssDm0HZjJd/zSJYLdvSGpaj/mbwPqPKtDKqbf6S/SVWQ8i
	 dbkbZHnAayYRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 673A1CD11C2
	for <ddprobe@lists.linux.dev>; Sun,  7 Apr 2024 06:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171247189640.3340.3401370287913807830.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef6f7ca300f9ffa33adbc62e07f94671c2cdef7b4eae0461770717652d253525
Date: Sun, 07 Apr 2024 06:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712471896
