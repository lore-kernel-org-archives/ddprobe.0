Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 462F0E553
	for <ddprobe@lists.linux.dev>; Sat,  7 Oct 2023 07:57:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FrK1/xde"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1CA5C433C8
	for <ddprobe@lists.linux.dev>; Sat,  7 Oct 2023 07:57:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696665428;
	bh=MWAMv9490U7GEXdZA/MJrSfd5o+Sonx30OnAHgAB4O8=;
	h=To:Subject:From:Date:From;
	b=FrK1/xdeVxbcZr8KCsikkIW+dzw5JmYBA1V0gV+VCGj1sf4qCV8HwgkzHLLAl9Xkv
	 HIJQshzn0kDim9M3bg/vdxQy/3IJL5p5914PFUCPx7d3oislOenuG5B0+qlz24DChH
	 lGPzVnCsqqKpPmPhQs8HvC83FeGF/r7lA+NTlSdYYaeeP+FJnERunncGEoCyY7Z9xC
	 D50HLG4uag+S/GW27CJfHsgm4Tfua8/O2LtrW1Eh1Pd22L8tFl5sU6vY9TfLGgWL4A
	 05m4/oJZd2kTalGwbrp94wacEirkfsv2I2vzRhIvk/IiQhDKfxKYPUNZ76AVSa5i19
	 CixaYrfTyXYDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7292E92FFD
	for <ddprobe@lists.linux.dev>; Sat,  7 Oct 2023 07:57:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169666542867.10576.12842548287811713338.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7dc0c0b7eea91f2adbe4e6535c6656cf0668dc0fd93a4a2df471255f1b67011a
Date: Sat, 07 Oct 2023 07:57:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696665428
