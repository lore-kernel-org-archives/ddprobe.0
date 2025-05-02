Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28CD61E5B62
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746184795; cv=none; b=aghCacDgJYWjGv54mODPeN5bYjINfl6Lb1s5d5zWveacbpW0DVTk678X8ZivzvdPcegjQqMQTtklXzccX2mdLpxdtOWIOSR+O1JMze2RAuBeBIbC2vQRFTk2+7nmYKjathxgoJY+mbT4s1j4oa7QzPpzEqA1s+wki9IuEF14EUs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746184795; c=relaxed/simple;
	bh=T2HiL6c/ExpLb6STaTYxSduAIhyqEpsxcH/ruQQjvsM=;
	h=To:Subject:From:Message-Id:Date; b=i0z2kgZaxxVmf8nww1ZojyGBkP7T5gJ5L4DD/beRjyIT1Wlyt837yLYXc7pjTCG6haNb88HMUmRBYzpmbz/B80dEonc2RAZNpPMdA0wJYU279ZB9yNvfueUx3dYQOazKXItAuQIGcBXKleLWl6YQuHjjX8IgxckH9D+jNZpca6A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bWQ+/MgB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bWQ+/MgB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F021C4CEEE
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746184793;
	bh=T2HiL6c/ExpLb6STaTYxSduAIhyqEpsxcH/ruQQjvsM=;
	h=To:Subject:From:Date:From;
	b=bWQ+/MgBqJ5bmMPYOujPWUOw1FgepUPxCnsLBh7G0q69dLyL4JZBO1o+bCtebLdWN
	 hNgP0gSSrLguBcwdx2m7bIx516eeMfu2dm+Uq+t8SYGcPBe8uMYDxfKlxQKIjqZsnB
	 MpejTkWb2MfAiFU9ELkL4jd4v1XmqrklvefPc4xclEWJfnQwiLTT7pyHOn70YEGCg0
	 ujB/M3Lf1CQv2tchd2dhYVXuIk5cOdKxCTBrkqhRuPB5V786clPQG6YM+4lTaO6YxC
	 DEG2kUjgnawMtx64jJ/SqoJCx0Fh4VOPvlWiqUe9lWwXAV0AmBdDY5kYNKiwhTfBq0
	 /yCdkrEI21jWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F238C3ABAA
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174618479357.17833.11905751470898506729.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35b60ca28862177216d55a38c5e63960ed3a902393d311a830bf02213c632ed9
Date: Fri, 02 May 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746184793
