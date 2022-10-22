Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDFE22CA6
	for <ddprobe@lists.linux.dev>; Sat, 22 Oct 2022 10:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70FDDC433D6
	for <ddprobe@lists.linux.dev>; Sat, 22 Oct 2022 10:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666434053;
	bh=F37IwtOhH8v7Sf0nuSp8u5ZyxsTwDwnaVcIA0DPraAs=;
	h=To:Subject:From:Date:From;
	b=R8OHngi/gLGhkxes5OKQSM9FCHZK/UvOlCVZ9vcTRM96zlF7J2gD3vMprYqYdu1Lt
	 Fm7EMdiG4FhNAcJQZ9a0VaNafoixO/Aj4PUHbsJT5DqIv40Jngr/rZXNynzIaYmwGT
	 VJpIabmpIM0f5RlvbGr1f1ygtRIuUDO3er8mgfmit/DXDr/NPGWaSVUJGlVtixu3uV
	 cAgWhbOIU+9IRHIkWiCf+sXxG0uM6VGB/PWurm6YI2cdONkPWQX+roh2JiDUqCvSwv
	 S31zMjr38ICzA/GuvWtxqXWbvrZJI4H/E7aM/lnv5WyoFQgjNr5zoYNvPVk+RTceWn
	 dWFwXPtkbmc8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55D22C04A95
	for <ddprobe@lists.linux.dev>; Sat, 22 Oct 2022 10:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166643405333.13004.8774023378842344589.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37a4acf02bbbe6da488d78b72f5e923a9be1e941b580278eb76e83cdf61567e1
Date: Sat, 22 Oct 2022 10:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666434053
