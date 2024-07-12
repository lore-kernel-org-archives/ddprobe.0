Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F8452E639
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 19:59:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720814363; cv=none; b=p2T/LWXEpPmcr2JpqtgNRRNuN31BhEnElDR++FyREB7yS15nLJ98nrKxYZHCIPpiwKa9KQk6gb84JGu4BJn5lyFgBd5y0baZSmjt5sGV12odANh3WyQEpSd/rjMf9mr6bQoPuN1cKIDd0VegbTofBQLBWm5KEaFjQ/1zHBQutoI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720814363; c=relaxed/simple;
	bh=OD7Eg09sn6KYl58AO9WaQz8eFh1cI1LClAMggO4NhMg=;
	h=To:Subject:From:Message-Id:Date; b=QLqScR82Q+x5y58ED0Tl5dj5p+Gkygyn/MYHjyMQOgBCdCDxwwgm1/z02l0AnJX1fFYj5fJvvqDXe06T7ASMlwOKWL7T7StwdSTtJEoEPWyOXnCW0AY2m75bHSlwUu1ZELID/jrvUPkV98YIKBcUiLURBzHe6guD6eVRng7t2eU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nyeXr/uD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nyeXr/uD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3250C32782
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 19:59:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720814362;
	bh=OD7Eg09sn6KYl58AO9WaQz8eFh1cI1LClAMggO4NhMg=;
	h=To:Subject:From:Date:From;
	b=nyeXr/uDBMl3ff9ZXg86R4Li8kU8603/XCcE1kGDLhrqDwL/u2qVnYiD64zafgR+8
	 uzBMKDlVE2I67vYvTRqECw5INpLrKwwLtexwIZW4oDO8ZCuwsWZ9U95vWee0r6jLY5
	 a7gn350A1wlcQmvPt/+v+y+Mak6FFGkRfVVpKsdDT/4ptox9Hb8NyqqboF6/09L2xr
	 sw9CrzvWfoAzDeXFzFXkJoDJpU4GDu7Q7y7EWw6qE1u0MA/xNO22vyqOCo17DiJ8qC
	 TgCfovml4uqJ78JSqPFo/OPRdMoBsUV5cobjkVnoGkJSRm6Yuti550CP2zv0AN9UDC
	 7zJWmFkfg3vXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1F52C3DA45
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 19:59:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172081436278.19657.3147582838559353288.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f48c0986a33aedcfc64a8608bd072175672b5738f94fe0967bb857ab9e9c781
Date: Fri, 12 Jul 2024 19:59:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720814362
