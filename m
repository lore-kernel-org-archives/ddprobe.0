Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EDF727460
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 15:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 93EC0C433EF
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 15:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673019687;
	bh=GkgWSTsDTybaf3RtGQAaP+zze0Cs+DAYXPNlurfSUAY=;
	h=To:Subject:From:Date:From;
	b=bd3RmTUrAbDwB9NzkXqPWMQrHxicWe283n5XUiW8q92YyuGCMxVfEXktOhXVLoqtg
	 qF41HR7jgEuZE7pxz5xFXZrzAeoeARjoUPDygVFLR3qHKTQ2NPe75iIzTeWebu7dfg
	 NvNzv5g3ngS1rH2pErhTQaNl8K68E/H9dUhhl+2Lr7zq00c/MN59auuHe61J13tZrc
	 jJuEy7BjpYQAMPKSSPCYzVFPnc9olXGjYzwdhn1OkLtTptvXhCyv+qkVqVk/5JDxNL
	 JEG4MTZpyA2mCr4nOA1n5OVVAaoQj94F3x41+Ky8KdI4sCxumhenhUDOi294zW57NM
	 hTQDogA16/INA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7A61FC3DA7A
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 15:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167301968747.2489.13880179159761090729.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c983d5254cbce7453945ea9c557e4de5b9e9747be62ed3748e52a1129f2db18
Date: Fri, 06 Jan 2023 15:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673019687
