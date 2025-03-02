Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53A3F1DB933
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 22:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740953335; cv=none; b=Sj1fvabQIWcMoQuatpTckn8r5mkIVSLoX3ggYHSfc8ja9iq+N4yR8ozDswt76tQsEUNMunRaQTPg8eOmE8t1Pv4pffHBkGxBnSuDLeKs//vtG8Be8DBky8y55iwyXTDeieH5n4gEh3cH+JZ6hLmqmGhE68xE7LA4M6zmlRJIylw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740953335; c=relaxed/simple;
	bh=Uy9kY+lzx5xIL2ttico77oq+yyToYz/yDMsZzC/Jlrs=;
	h=To:Subject:From:Message-Id:Date; b=QRkgVPXp+iFmZ9gAAATdCRwj5+UNaZwVK2DKyKbbR5gzOw7qRPdetHWSremazk4aJr/L2EeDhnr/UPTJCIT2xD9lbGqShjVLO5I8O6/fvtKbEAaPY5n9ujyyKzaFIluHMUaoEG68PaS0Ib3Ri1eWRir0lGDuyJBVhShKfLwsfxU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U7GcgnQY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U7GcgnQY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB0D0C4CED6
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 22:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740953333;
	bh=Uy9kY+lzx5xIL2ttico77oq+yyToYz/yDMsZzC/Jlrs=;
	h=To:Subject:From:Date:From;
	b=U7GcgnQYSBsViaVtBcUXOWgkksAJM53Vq4wYDk0cVWQ4fQtVpJwCtI1VrxCSDnpi2
	 jKHECiupzjJDv2caFnpXXXdWkGChHZzgdLae5DDrXOTvec2/8WiQrVTP/6fmKVdvRQ
	 tbXt2886KgtBnQm6F+xO0Do3eO6zsAUIhUckgqFMCuWkBDceFMwMfw0hmWOEcQRia+
	 QP4MSYBlIW/yBK0PsqzN2XwLVRGjtfvYkRY2DM7AnxvicB3wVWAD454J7kPL17fkNX
	 MB6MgMzZRtubHs5cXEeaElP0imcnKVUVSJM0Xmz9aeZoeGIuAO0UlSc8YAi8oxcbAh
	 dKPZmTnpmvCKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A64C5C19F32
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 22:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174095333365.9902.17437465869338986795.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd890b23617d343361c60aa8f656097f8317ff71e8a4129d6f6a0977700adf29
Date: Sun, 02 Mar 2025 22:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740953333
