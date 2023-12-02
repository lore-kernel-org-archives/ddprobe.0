Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A15137E2
	for <ddprobe@lists.linux.dev>; Sat,  2 Dec 2023 00:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FvwbmL/Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A7CAC43391
	for <ddprobe@lists.linux.dev>; Sat,  2 Dec 2023 00:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701475696;
	bh=h7G68CrNrSvavF+Ndy1qL4AIvLdESsjTvsIRFX4sYSw=;
	h=To:Subject:From:Date:From;
	b=FvwbmL/Z4I4BkNpib7oZltL1fcK/mbGqIhLHVqHZIeOlfTWyPC5sy6DDWs8zA3BDl
	 /BaOzRpnJ+8G+7KblFhaSalawjIsLsEbBYWU61XNl3kZwuF2n/vkODlK08iE2oLDDq
	 YDs0mRd86jOH0iNQdeKunfL8vSsgcWIvYa4/YqNdleACz3hMq0ZaNT2vdq2676LDYs
	 NCNepmNdG3H2SBescpR69mRsMOUjgaHXHTvrr8xJffabgKAum63T+tyZxFGdrQZ5sS
	 xpnhR+IUfiCtUBfxWtKgqGUC9MVGpaC1Sc1L0/G/rHfniiuygqh+v0cAsZM5ucDCIJ
	 SrYY6tBit0GwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6276DC07E97
	for <ddprobe@lists.linux.dev>; Sat,  2 Dec 2023 00:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170147569639.30317.7164792029811167446.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a5ef9e417888c237025d9617baed4583b6c1310b7d4d97ee9ebf27d9f811dc2
Date: Sat, 02 Dec 2023 00:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701475696
