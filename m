Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB9B33D961
	for <ddprobe@lists.linux.dev>; Mon,  1 Apr 2024 16:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711988297; cv=none; b=tD7lQr9XdiNl5qqVXSgTpkkkCdwDKXbiB70mwWXivzhJ0tjRKxd2zX5pS0dVukwuNfn8J5jvdSGBkhcf9xg31LgNh6wg2Z7KlGDg/LDyOKLroWkYhgX9T/ydBiDB3BT33J5YVLgkjtaFRmurnH0dVU0gVYGJxkgJxVzXzBjjxMw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711988297; c=relaxed/simple;
	bh=BPGt2VY3jSa0VKmTw9s1pBItsYCWjb14BSiw9jfQuRc=;
	h=To:Subject:From:Message-Id:Date; b=NYQ6PnkkXXkQG0mFh/Dq44vPNnEoa7efm244uddI6jCz/eEQf24TFGK9Rsf5k6t5MwNOynFoCNvsLd+VRE7eerM+JqtF5FBbJDQFb4mSV2uKjJCu+nPk6t7OVArjmvUNDNryzf+5DyfXcMx4ZgaOrcgXEHTl+pET0JbVyqLlQV4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aHN6K6ej; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aHN6K6ej"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75D8DC433F1
	for <ddprobe@lists.linux.dev>; Mon,  1 Apr 2024 16:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711988296;
	bh=BPGt2VY3jSa0VKmTw9s1pBItsYCWjb14BSiw9jfQuRc=;
	h=To:Subject:From:Date:From;
	b=aHN6K6ejkODghyDOQwHIxEoZI2nnYoXwSGSuwhJDY1czVvV6p11RJv+HyUNhBxSvs
	 yreomtHCKb3hdyvnjIqdKM/t5a4vpVwMJt2dVTuFXrpJkFEZ1z7n99kRCy4xch2zxJ
	 f8o3dzkjZCXe7tH6VywDvlpx5VxCv2X+PTMD24pHbrVbgGpvzgpb8fMf1qelbUNWt8
	 kx2SkOgs5drQbucHfmaVa5xKGQYInON++Ar4Lv9NTp8J7f29qEG3NoS9TNM3tZpprF
	 oOn9NUCS2imadUVcSunLsfYmuiewcoFC1L05VQPC6oTEKPf/Hje5EsbvGOk4NjIZcP
	 Mclpl2vGNEfcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68703CD128A
	for <ddprobe@lists.linux.dev>; Mon,  1 Apr 2024 16:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171198829639.13693.882628048979632827.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 263b7a4b6064fe186461bc080cb0a055a227a678914f3a6edf64e07df95a12ad
Date: Mon, 01 Apr 2024 16:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711988296
