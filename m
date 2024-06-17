Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44B7E28F3
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 15:58:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718639903; cv=none; b=WNa9kOwL4FX+TgWH4Uc5nx0hwduo+so9fxSD8JdtyAafdRHfKAUU7RlTKEEMRr+f1VW5pEGQrdOyJF0U1u+emNjwB/SsiLJw4M+q65yZYwjhIFX0Orjifu6Lk5IG4SO19GtD2DmrGl9Imfesb99mxFnpwwjZYOhXcjFaLHDp++w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718639903; c=relaxed/simple;
	bh=uHi4ZL54BMJfzqPy0rZ0wTKXbIFbaNqRVVynm/OJzcM=;
	h=To:Subject:From:Message-Id:Date; b=V01w0KcPtjbvQKiEPgnNaRXa4iKMuMj98x2x+pRTcc0nwuwNmdMn08SWHwGrw0EK0EtSLw82YFsE1SfdYzxCGLM2WwxwU/MFKPGDB2h+OewlMVs6aFgfPL1zynwSmNapkCEn6aySUzvCMpMpVfydH28mavB7E9HVrwSEZ79wz2A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BI8oAGxz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BI8oAGxz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEEB1C2BD10
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 15:58:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718639902;
	bh=uHi4ZL54BMJfzqPy0rZ0wTKXbIFbaNqRVVynm/OJzcM=;
	h=To:Subject:From:Date:From;
	b=BI8oAGxzsr8BMU6sTbEqIVnbfye/07oIi3XVGAFT/LovvHCmskzRQiaOWmPvtniaG
	 fKfyF6GTXR/37hGxT8RV1lwljwMjkq2qSuGQrgFNiE9DvMwNxIWcZ3f3ZTB9lQaAuS
	 cAZ1aFiAL0wToaqNJtsWw5TywvuPWdnTQ861JrD/LHEjIDPSir0iwlIy+z0IjwAhBR
	 o6Z6AN7Xt+pNezOMA+Ay9y6r0Hl7X5vjbKG8NrR7TmU+zfMRmly9vILzafJdXFzMTy
	 iiV6tltDDe6UFYAuHzxdkkZg/nDtryitFUVwCp63qUaYcP4iHuSETh/X26NqS/3ynX
	 KX2Z5OSPfnq7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7AC8C2BA15
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 15:58:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171863990280.29517.5730274520594212159.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41e0543ef361ea65223ed2a00c22fc837378bdf672fc0f72f3ad2444020fa353
Date: Mon, 17 Jun 2024 15:58:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718639902
