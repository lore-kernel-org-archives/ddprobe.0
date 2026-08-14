Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 585F61A682E
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 04:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786680034; cv=none; b=go4s4x5DfxRYRUvL1fyGb1GMtP3iCyc3ZqFmtcALKc8qz6tbIWghuoTpKWTEq1BS9PNvsQWpiQtMW+I7mQC2/37g74oB+cc8s0lGz9uj721twAAtmJaEFU8StaAecG4zk+aECafif7EWCE6C7eNy04fw1D/9QKPaBC4MO/R2kHc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786680034; c=relaxed/simple;
	bh=TjFq00Wg2pQH9krc+fW7vGWK58UBSRfnlssJBc8NpPM=;
	h=To:Subject:From:Message-Id:Date; b=ABYrzjtOwYpYHra5QIvnmh2L6z0Wv3PY9rFbYsv84Tln3H94VrO8ixA2Sogrek69AFgUkvYaNzZx/jhKWd/dL9so83RWVyewunDFsp8l1467N0+fVRRTVDdmyXWH+17VdeNSMT3/iB8X0Pp6riFlkJd9Y6yy4QS23kDbHz56+Ac=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tm4vNjQ2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tm4vNjQ2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB8E0C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 04:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786680033;
	bh=TjFq00Wg2pQH9krc+fW7vGWK58UBSRfnlssJBc8NpPM=;
	h=To:Subject:From:Date:From;
	b=Tm4vNjQ2vunvjgMyT5Hckf3/4U4/Z5/VSc4k4w5+80TNdgEp2egY96RgtcW/BkP6k
	 /F6FrdEJpgxadLS+gC7I/2nbtZJM2bvQ+fDilHfbN/BDobF//56q8NdyQU9SaQxruS
	 NgII2f/NJrTQzlKwciY2TY/PXXzxV0762hjBlUqEM33t5PbnIlxqEJa4/ZE7K18NUr
	 js3QVq4Il40glfAnVnog+PoRzzJfcBj3rNUlcARiQoiIkagY6FJA8WUKsO71EmdRRk
	 UsM9NkyNB9j+Ti/60ZcpEGP8Bx7GUje+e+vuhUuiTOtE8XDM7Lt4vQPTY+UHP4Rfor
	 xaZJTnb1JZEFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A801EC5CFCF
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 04:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178668003368.14031.14306676780644854399.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b791290e0865e9ecc206c42713eb486f49da4109f56bf9c9abe4a726691a651
Date: Fri, 14 Aug 2026 04:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786680033
