Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 577396AAD
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742675394; cv=none; b=TWlg8UI9sNK0E4nRevvgUxBCqFClcL2ogPVbOtt1qxAZIn2/QjZzfenYBA4/mIfZo+YI8c0UFS03Zvrc1oDeX6r2W6EYcz7Hodjp7XtWX16GJOdZ5tDx5+sso5z/vW5NQBDc72q51MiNvX25Cche6hDPL06kCuc84Szq9vf/pok=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742675394; c=relaxed/simple;
	bh=oKVl4Gx+gGl7FDcfgZBOkRwt0kbFWE5MpOIinH9oSBo=;
	h=To:Subject:From:Message-Id:Date; b=fkoKXlXAjb7RheleismEKcsG/z18qQqtVYs+V4yYytVTIbarRPbWNmjhtYVRr62+IthrO6DknhKWGmo7aZ/8ZS6Z3mufpDIZYEXlfNkwRGznXljxeWrd+yssoOiE2F+a91suEzM3zdWd6B9p2v+jmKWMvPpYEbQ4ahWnXmtdHiY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OwtEnTac; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OwtEnTac"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9DFAC4CEDD
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742675393;
	bh=oKVl4Gx+gGl7FDcfgZBOkRwt0kbFWE5MpOIinH9oSBo=;
	h=To:Subject:From:Date:From;
	b=OwtEnTacq4FtpCWQ5LSKaAZ60qDCa9o1NeHhCVK+KUyhvgkOhU/5IlInreIyqRe/H
	 nN3ssoZwCV+Jl3wt1/mUNAdXT5V1MXql0SIuEP8S08w4i0xvfXTarRbJfS86cBCjct
	 5ceYZ97nKLe+tXCeMcCIzvoCuguMExYtXMeRxDRH3pEA5tCsl/U3lAVLE3j0s3OUZR
	 /bcNn+x0ogRlcZ6Vrrmzu3ZNLPMcDSCnrapEfwLrXtZju1sZ2Tw4iBaDszK96rqT5N
	 f4qFdD7KXicXzWfxq3phyapCgYkJaqofj3DyJI+NuJgPT0z74kUjbwIpmGKETuEl7X
	 iFfcJvhCP0BFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0451C35FFC
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174267539363.23452.1266970124357440133.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c64568e98f75a1278ebbd17886a8786a53cfecd04af9f5072bf0a2ee76057d84
Date: Sat, 22 Mar 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742675393
