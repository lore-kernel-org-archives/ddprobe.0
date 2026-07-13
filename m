Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6896B30C17B
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 03:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783912714; cv=none; b=p2/u/iQNoDI/u4HcDuMC2rNvjqmPh4S6UolxFNAEef/K36xzrPiFqn1nI5Lu7A9tpHPI3YNYFMSYlmK4kOcCXPJuLHM4/3syYvmCIIAHA3e8a9z6QwJOQCHJSvuwvMD8ZpObGUyFPKmZtoihi+oOTaZvuENNNgN+N7Nqxkm5LVM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783912714; c=relaxed/simple;
	bh=5ZX4kAPhrHJ2YIfBNNHZOAMotoCkM+R6k+tLuJO/GHE=;
	h=To:Subject:From:Message-Id:Date; b=uF8/9llT9vAcCXDUPCz8oeoRyYnPWp+ndA1aFBRgcmjq4JK5GLXGNIX8dh339ElYpFIA0MIW6YKFmgon3EQkpcOypomw7ajcQx6B+Tjm0+B+TnVrGYXd6asYiuZuHCHbAPvyFGUfNnH5CIrCI3RWZKpBapOuP0u201uPZXCMV+4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E7dZdBvm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E7dZdBvm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA382C2BCB7
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 03:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783912713;
	bh=5ZX4kAPhrHJ2YIfBNNHZOAMotoCkM+R6k+tLuJO/GHE=;
	h=To:Subject:From:Date:From;
	b=E7dZdBvmtFzcIyeyOGwdSYitXwWxoHgbJ2COFIcj8g6YrsBPP7NkI+IuxlzYnTXao
	 D62aWb1kLXkQQ8R61Gf2wYVjMuldowGKOzwIHusSVvDIvdEyVjU4btUo+hQbCpP8OB
	 sUBGzIMG+kFZYh2P2pflR3GG6msJ4PTq91rWRbH9UtLPxaX1gc1FFhXDXA5ZEEvPat
	 x7mdtEV8Yu6A2aG+tmemAWHNdYe3gEbUPWZixWJrlSD6FL+0m7v6wHgY2iqBsfZtCU
	 l2h+ZS3V6M7MMjJU26rvcp1mM0sEMohjQ/v1NEbh2z3TP++RuYU6aEi/eBGLfYO0K5
	 hix1YE36djRhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8204C43458
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 03:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178391271368.10112.208330820968141093.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76fc7f53d2c71ea89c0cecdc061e8879ecad32dac4ba39efcd9a006e3cf4bcac
Date: Mon, 13 Jul 2026 03:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783912713
