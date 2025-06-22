Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11CC186348
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750622394; cv=none; b=QWcRaB7jThbkxKWKCXoXLFcGxCUhCOsC50U2Nr7Ezqs0jRw/XLgos6nv+nCyxqWGWqy1SZaKWOJCgrMSw9xEyJlQuvnejYAJtLn7i4jaZBd6q1HTNhGRBM2VK49GlYyaFoiGRXcHlheWxUFqT0V1EngAq1CE4ChSFTbv9UGHylo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750622394; c=relaxed/simple;
	bh=nyxCgUX2jmKStc9b/UL6rNFimG10f1tfrbvkY/TTIHI=;
	h=To:Subject:From:Message-Id:Date; b=q5cts2NPcJmRfAsDd+AtIh0/Lk2kHeuqE7G/LS1/+qCEqfl4Ql+R6DgVuD5eFQ/iRc9ZOsQZRbDCmjocMX653abmQ+c3vfb+H/hOZQ5gSgrl6VejzuZjEP+jqdH1fKahLaedGNTRqYlySRNiqcQ7A5P0kCdUrtqeeh/DmG8ltcQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EaS9MEBW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EaS9MEBW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A15F9C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750622393;
	bh=nyxCgUX2jmKStc9b/UL6rNFimG10f1tfrbvkY/TTIHI=;
	h=To:Subject:From:Date:From;
	b=EaS9MEBWDn5UonMfpy6MCF/H4ksT4qfC8BXbPHm27F/U4Zka2KuyfatUMfUliZyr/
	 WJNK1nLLeHWgzpyHPz0tTXuGrQrFIxxL/fUULrSAEbMy4KjbIRcaJknee6eX/JUPJi
	 dxnyoMmesrzf6jtOOB1rtMcAvSzJpOs4DmvFUMSm4jAHiQR+OXxxmF0vqRITADG6Jg
	 GvMfc04HlPdI2M7yboAW/50IoH7VknCMwMFas727INfBkMtBo6+ddvC/P7kt8+a6C4
	 F0r6nByVzS6UrPS2Ox+ug5R009yYRPHRwRJU6ObplUi20eXzJUM0PvZTjjJN8OLpjj
	 3kCR/Gf6VomgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90E04C7115A
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175062239358.1773.17668906215950781336.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6170d30355b51cc4051d44d9751b209f4fb60382fa8fdc0a1dd12160bfd959b5
Date: Sun, 22 Jun 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750622393
