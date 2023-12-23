Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B6CD315E97
	for <ddprobe@lists.linux.dev>; Sat, 23 Dec 2023 20:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TJn3Nc8B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F242C433C8
	for <ddprobe@lists.linux.dev>; Sat, 23 Dec 2023 20:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703363296;
	bh=V/+HVfV5m9XQGdx+kZwcBBGJCFQeAwa4jGcFUsiNP0g=;
	h=To:Subject:From:Date:From;
	b=TJn3Nc8BJq/kVbeWRQSrd+/i2xQtYknm7duzKC/9HhQQ1gtOomIdCpMT0L7+IJSad
	 SqDzBPXZSk97XoBjESihWC1FyPYxMun/TbShc90z28aiPUk94+yfxQ93DP7R+io6Kj
	 fO9NDqYt7v2iHH/dlQp0/iuHKeTHoX6/AAhsaOPAEYDs5j+aoTnKeKGFY5S7QCIG0W
	 rn2hXKfxB2w8tnxcHnmNOF3EZ1UJowJfpc7VJlqBbrKnYouqxzzq/zotLYKJGVFzkt
	 sX82J0iJJlmj45D9sNe2nxqhUHlpRmVB1WXEZENF1Z99N+XoNW2UdhIm/IHFRRmuEp
	 Jhx8OYIRdN07g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64A1EC3DA6E
	for <ddprobe@lists.linux.dev>; Sat, 23 Dec 2023 20:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170336329637.24771.9334947364735247608.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c73bdb4783a39eb6695b26f41ed4ac1624cddf5159b7b253633a62b9e79b30d8
Date: Sat, 23 Dec 2023 20:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703363296
