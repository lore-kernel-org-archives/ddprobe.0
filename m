Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 630B619E83D
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 19:05:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721156723; cv=none; b=AYquwMMvQrNa4InAfLMUxD+zbIqQMa7vDw+clxtwLO1lHccDTjRA9QgqClePNEWDOHYphlLxgLFxuNVp/0ZoD4jp9hEh9BhY64PxnG9pKv6WAglKlb3vkBSKJJcxkYfHjkgTONj+rOfpeBkXMl6Dzzr8BMQLPX0bAszHpDmlDAA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721156723; c=relaxed/simple;
	bh=RjnKzVS+5t/T+U0lyOCqz8PyHd8cHJW4cObrpf5w0/A=;
	h=To:Subject:From:Message-Id:Date; b=ME9S6Rb7uVVdP6iWX8y5SrSa/HVdKp7jrR17/XohFUkWAPKpLNpV0nvmOkpmtiJxsi+S47lEZv314KRIOFVUIT9REfhHqEVJfWhJ2d4f5O48iUiv1q5IPMgqUdNsIxaI7zTIjdLPUgiaZcAA5kwmGMb6RqHH09Rc9me80aTCvpQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kw41jPRY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kw41jPRY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6EC3C4AF0B
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 19:05:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721156722;
	bh=RjnKzVS+5t/T+U0lyOCqz8PyHd8cHJW4cObrpf5w0/A=;
	h=To:Subject:From:Date:From;
	b=Kw41jPRYZJtIezYlTBrENVVlSzuQRGiVTWGKGxItAoFvRi/ofwWV5dLMaJlUxcLF4
	 OWvKpNR9IaPcOjG41Tn70g+CVnfH7xDsEl3qoF1diz3yoij6gbiFGK9EGk8DrxfL21
	 3Rr470wGERpbq5dY8lCoeDbNmZq3/wkI/hcSZezbFDJXMwmPNuBUIe7TnckMB1G9v8
	 PSruZ4WbVWqCVkVI6zcVLcsCzLVTzilpnGa3KHHjrCFB+v2AFZagHTcXx8sUmmXQ3j
	 BxhhYWKGRoak9LqOdPGnz6t9xYfWSQuWYDT3JdtOQAcL3Ga0r/NAr1bnMf3lzicF44
	 ex88E2rYrc4lQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFD4FC3DA59
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 19:05:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172115672277.24924.5031385657294326880.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4373118a36b7188cecbe50485780b60731b4f0a4bf42ca7efb87d4d2f335734
Date: Tue, 16 Jul 2024 19:05:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721156722
