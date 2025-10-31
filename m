Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14F4E1DF979
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761914994; cv=none; b=B8ja9fU3bZjPnWWwTfrI15UelT1dIVrh0esyVhYY608d4sCYJHNI32O6hTWtqH3bhAyBUsnrSvOvRpri3sEYmz5nE6TWsn4iPU4JE8gCKq5a/P8QyzJykDsO0szeHlq2bR4NJx6hsM7Gx/0BqYFAinNuQeJe1vGZxdT7KDFTJVY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761914994; c=relaxed/simple;
	bh=/sOPpjfSeD8hXdlh1BsiHEQ6zmJ4VMuLb2E2hNXkv6U=;
	h=To:Subject:From:Message-Id:Date; b=JcKSqK9UGiA57NgK+uiYExu3VCVdc1ADAYtX/Q/HhgtIrV+ODrES5oqvKusC/JKULb8W4jLsc79iMNYWAdxlGH6HLXYPPvC5pePswJXmVMdzrsnF+MlJRpFua9Tg7KPf3+b48f1E4OHkBZoz1sddkRx+DVOHINorbCy8jCvc5iw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MW3nSvHX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MW3nSvHX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A213DC4CEF8
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761914993;
	bh=/sOPpjfSeD8hXdlh1BsiHEQ6zmJ4VMuLb2E2hNXkv6U=;
	h=To:Subject:From:Date:From;
	b=MW3nSvHXaOkrW3cgY5MgvTEA2+/VG+6O6wf9M6iyLtw/v2nFUHqvWcuxt4kLzv21B
	 cwes9hphm/CsTP3DKQW+jOrKFY8Li0iFmhhrM+8OPoMZqhAs4jnX1nizUvlQCtYcc9
	 D3BNAl/YjBfjv6M2OgjOJB2lfc6OBlEwxionMovJb9mlAtEnoEW7lmkNH+bMPGS0R6
	 E7XWKD+RBwgRWgbeyZunFP8ge9Au0C6G5Pd+ZuLM6r3KYeoV3DPO0N5HOiDX0WYX8N
	 9var/nOxV9e31yUD/pevtplLpyVDwB6A4U8RK4PAGXPIyrC7w16vBAS5IDO0pNbd2g
	 BDjIYG0ceBF3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91059CCF9F8
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176191499358.25760.8625037403215911651.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 961b1a0c2846f4cb218f5925dd8c9b669018e34abe56c783014c3d2e6947c1d3
Date: Fri, 31 Oct 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761914993
