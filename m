Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E95D219A86
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750519794; cv=none; b=XcU+/uIQVLiA8udZhmMnkcJaAENibof7CrSQXY9Z7rO/S/oj9yRIMdn+Fgxh1UegOD/SjI9v2TBx8JecZaoe4MlsOai8WAhq2Vx+0AAG1uH2GKvmeKZFx0cY6bVMsoutsPHNhoRYWnwNtyfa7K5Nuf0Fs8dm+Tjky3jMfwEB1sY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750519794; c=relaxed/simple;
	bh=Uk/QChCoxrG0CXDiAr3LcveXLIbFUgwb6z+T5clAVoY=;
	h=To:Subject:From:Message-Id:Date; b=LrQ/uei5AMmn2VNYpnOhQxPc8ckIM01cDHGxaptaqz4wvp8CJOHkMdFahxDVb3lSfHG/FEihFhqAudqIUHb4D7p/+i3iXeKJY4VuBX2ZdPKC8/eXXwP4nZOQbnlSGxTeTqTB9xJnWzv2+d8ryyw+Js1l+VsIH2XAbt+ygoRFOLI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JSocxSSE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JSocxSSE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A36FAC4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750519793;
	bh=Uk/QChCoxrG0CXDiAr3LcveXLIbFUgwb6z+T5clAVoY=;
	h=To:Subject:From:Date:From;
	b=JSocxSSE8mAP9Zz2WlrwWqvOc39H3UFqizm+nT/UH80kqbhCY1OJNjG6qcLNHMb8M
	 jlSSXGhSfIyRcG8k1nFOiKRHjBjYl/BF0KKx9hQe/KSpUBz9U3tGkEpzunUmi14BtU
	 Xi1Z0hJtvcrNXJj0h3c8zRLTiiOP9UAp6BDLADQhDk54dJV/7v3pyTA4ovwF7esLyU
	 K6qXeKCROPgAb13ZEL4WvnhZZ3N7aPSPewxB2fLYvFE0/MnYcHDfms9dOJScMvgQgx
	 uUv3oZP0qEv6BfTmf+7q/Y/2edBynYitWAlcOUO2ZCurt/1CWiTx7ewZ+74bgxz+IF
	 LJQWdwp5z2RfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9184EC71157
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175051979357.2173.11530153436382980397.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 416d30c9ed8eb58df895c770627c91ce06ee5e0a910e232790f4118cf522a387
Date: Sat, 21 Jun 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750519793
