Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16C4E271A9A
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751391594; cv=none; b=Xn6Gyme5X+MhIlQojJEzljUt5AXIp/HO1C9bBlSNyiZ1O1YRKaSlLBKY8ianF1rw0kx1K73tTj4bNstk0lkzSNGLORXNuOzhRrHpFVNv3rCRlmjuCiVtFJ3puRfFbJmZTS7gOLjfMbexJ28a/GQ4x849bTOXeZpouf614uGls3o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751391594; c=relaxed/simple;
	bh=vohgffsRLLIPP4Qwt8MjA6TDwFWRFDlD1vDWLOKU5FU=;
	h=To:Subject:From:Message-Id:Date; b=VjlbsBYKysCsI7JMnxoiKsVs3C3MH5Rn4w8nUisMXnvRuINoECPdsowqmLXN7kYNcQBjmz49UZCKO9zCYgZ7WifzCyWFMyc8l1rnsxvbauMGeqh9sup6NOTnX/8Llr2QuyHH+na9KP8Ag2XAcmnX+mqZOnM+an0web8Ve7at4nw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=thb5FfhG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="thb5FfhG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BFA9C4CEEB
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751391593;
	bh=vohgffsRLLIPP4Qwt8MjA6TDwFWRFDlD1vDWLOKU5FU=;
	h=To:Subject:From:Date:From;
	b=thb5FfhGFMRcwbzXrIqipcvQyT11JYJ92n2bWmksohjbWbuE65+aCSLO48azA+VCG
	 UVm9/nP1j7jzhVeYPH0GmEZnilWMCYD2GZNTRK1w8D9Ago8u0Mc3nfmX9UD/zxVYqp
	 1YtyqMPKRjhCLZHsC7nsIAZQnLQLG5vpXi0JtWdZ2iArwYKA6vCGfDoROMczXDqyhK
	 t8/RlAWte0jEyVfsdDMh0zh7DCtX1j7vG3XB30SK/DcV852MI/ncXh/XHL9FnYKEvm
	 Y3yUg/RLEZSXKDh1o71y06V7TYROR9jcTMCDn3jCoZEgltu9yXwEwkqYCR8yCPpyVo
	 a6FDirrpuOoUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E86BC7EE30
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175139159357.32350.17821500895669426009.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca6200cb29877f226c123c1b3dea976b1ebb81d39efa49cd4190cafeb8343a92
Date: Tue, 01 Jul 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751391593
