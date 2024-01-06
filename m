Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 328E16FA4
	for <ddprobe@lists.linux.dev>; Sat,  6 Jan 2024 13:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TAcmEoBz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 87944C433C7
	for <ddprobe@lists.linux.dev>; Sat,  6 Jan 2024 13:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704546496;
	bh=z0ocWIS8KscGQ7BlMAuSfgkLCvcQkr2GB8k+KMLHo5k=;
	h=To:Subject:From:Date:From;
	b=TAcmEoBzlYgE86LHVfSIyWhvbIvwfhbN2I2OakaUAgoXj2GnaZtKnWjRS+t7B6oLF
	 VK34lN263vwtag5Ss23+jxlYoHgkHwsKueUBwz/3kr1LkHHiT9K7BP58Yk4SAlCXf+
	 kmG5FSQ+7FQZkVvBYk028vD3ZZ7cq4C/Vgec1eSt3to3wJMPNKpcy+SnlrQl27Y5OA
	 eab/pi1FskTOoRRSW8zmV36nb8JahlQMcR/FZxzi7LRwTgKS+5kyrqFYZXxM3Kk3HV
	 H1zLZTL0RQ1TqMawjHnHps8D2dmC7Kd+k1w0YtKx15rx1xp+pRgfTvgZiTOUASLx3Y
	 vLghBKCmm5iAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6AC20C46CD2
	for <ddprobe@lists.linux.dev>; Sat,  6 Jan 2024 13:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170454649639.18781.17787539457269050057.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f447c9752f710a169fe082f714ce41034d3d58a08567a49d090fe6bf5c69e890
Date: Sat, 06 Jan 2024 13:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704546496
