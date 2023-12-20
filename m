Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 131AB48792
	for <ddprobe@lists.linux.dev>; Wed, 20 Dec 2023 19:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V67/2Yow"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8102FC433C9
	for <ddprobe@lists.linux.dev>; Wed, 20 Dec 2023 19:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703101096;
	bh=CPWlqxkniNeRGX3v/IIpr9NaJZUAx3BTPptVFz4qC+k=;
	h=To:Subject:From:Date:From;
	b=V67/2YowTyZUpS4mwGcItKjFN0sESwTFYcrtfybfd7Rr14ovWbeWdjyrUbGFtELp/
	 v+KgHI/IgkHQt8oCZsruVQuE3D2cnALpZ7n7CHP4Y/CJaYTfdsE+Hg7cSfGLRk8WQj
	 HoKmdwvMBHR59euyXhpSlo9UzIdpk6mdEteCul26hUEpSDkUGu1ud8cff5N9FIjS61
	 iF6qZV3cDkOJjdy5NoAHGLJvivINN/v/SYH8xWH2t04oBEufLTbBNsTJlMch6cPH07
	 5NjCG0j+332V63xpYmfPSl52cF3ESC6mjxvv4Fz1D5r8KSZ/S3P8U3KLLuQKhcDiIi
	 HLLJYV2CdCW2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63C5BC3DA6E
	for <ddprobe@lists.linux.dev>; Wed, 20 Dec 2023 19:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170310109640.10953.12981409477214254530.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28faf4f7f7a71334ecc1253734cf4bea7e4c8030da2a0362756116e36ec0d366
Date: Wed, 20 Dec 2023 19:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703101096
