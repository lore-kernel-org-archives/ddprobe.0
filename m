Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6018F839F4
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743922795; cv=none; b=YLxo/IcFI/hO+f6A4Mt1ufYVy62AZQaIbfDDjTN5c7hckhl1kLv8sZLE65bEa8Iz8Vz9NLdvcew6JmD2zZd83VFr2WWxpu9b8zjPgWK+IZ6LqYyCdToKpzlUHUzKa2WJAYyf9Xltdmf8YutPV/hDtnNMk1sxh96LakmnnqyS+qI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743922795; c=relaxed/simple;
	bh=slOZ7iEyscN/fbg/M2AWPcvOUpMlmmuzMvUOgMccSLU=;
	h=To:Subject:From:Message-Id:Date; b=pAmn0gzQ3oJdG3JWbrGBNUJ09qAzVBWcMSX3OW0qfxJPUuK77LBtHlL/zVUBpsEhafV20pXRI+aTIrfgbH2isWS2sa4/mlfaT2M55yMhWaxQ1PY7QAMNFXZxG/Y+ZepyAgTMec05T9VKRSMnbsNxcFDN7DU1lQIcolP2BCNKA5A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bh4V4zwO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bh4V4zwO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAB03C4CEE3
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743922793;
	bh=slOZ7iEyscN/fbg/M2AWPcvOUpMlmmuzMvUOgMccSLU=;
	h=To:Subject:From:Date:From;
	b=Bh4V4zwOfeclt/EUC02GJA/ubjNgjNxkO82FiDalL+15GbA0NsTzQczlR8b/GJf+U
	 QOu9ph8kBERFI4ZTOSH+K/qE3S9z37lNRzTJCvf2GKZ/7s8JG7Kkk6T6n3KC6zk9O7
	 zN9n8455fd1H/qcHv4y0ZTG4VgQK0LsYCOyiUGh29My4P7hnvUVRC8KorODZY4kmD6
	 U7PTPyrl/r4l+PYQumSEviuwIjv6/NRWU0+Gq6w53Q7F7fHI/MPbmXd8quk+kQuf1A
	 I+VMKdHwbvmGsMd6njzH1nUVRxCOwVmtL8iHOrPL2JOtfqOiLRBaTApp09eKm1QsdY
	 AsL1Rb+jJ6HtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E605C3600C
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174392279361.13192.17260775200271445619.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02f80c1051c18fc2300b0604f351131111610d8110e5bd59436e02ebd64cf054
Date: Sun, 06 Apr 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743922793
