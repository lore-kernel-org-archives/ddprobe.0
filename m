Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30A7C7464
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746977395; cv=none; b=QqzCsmiaj3VoADR0vKsTPtGTV6d09z8JRBK7b/2/Kaj9FsTSXf9ofQ7b42gd24gEWh+kIEFmuzN9rnHMDVZYS0/5eeRqfXxRJy48XRdzYNt/zjqx5yH238+zc9s2aHq4CsK7ge0xa6jDQsRyicYNTXjag5qbIXax4K3IrhqtdjM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746977395; c=relaxed/simple;
	bh=+B0lpCY8nzBErcmS3JixXr+vDanmTs/7EABgL5ue1mc=;
	h=To:Subject:From:Message-Id:Date; b=c6KXs1N2oglny3EXqqs4bPPMMXmP8Zt6Mtyl21dfC2XnEH2FCXDEXW/cZbaHBoI0M6IeNDE5GVqyyurQubypH78Y7k4Y7AcYs5e3sYLgHbY/ejq4ODDbh+h/fnsEc1/gDDn4/EehXE79qFKkNJhPAOjp0F2YgDTJAcwJrYPOw4A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W5rrBFr0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W5rrBFr0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DBF8C4CEE4
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746977393;
	bh=+B0lpCY8nzBErcmS3JixXr+vDanmTs/7EABgL5ue1mc=;
	h=To:Subject:From:Date:From;
	b=W5rrBFr0+S+IKxZvJRh0M0Xm1jcU13084Co8bOMspmdy2SUVcjHO6ZWeynPdl10j8
	 514vu6yk4Ylf4SJjLSRPZ6RuhEp/2HGwtflXlbpY5QVK/6DWC0695kxnJA6dahuf1R
	 tKDFS0mgmpF6pcs5o8rNM2/3+5vbI63ofpoEOY9OgdPXoN2dXJBfGh8FLaU+Z9aKSU
	 WRlNKPUOD9JfCCxy39FdxA5i9e7oo1KTUH2OxE0Ylm+cIRjcrZBuHq3A/MgAiE4Xc8
	 qCKFzDpIVzwz0HQu3YC3eaNoaxReuqaQR94kU16ShneCJo4YVyWSzmAUiHhdjtRKW4
	 JNF7tzWBjExmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E83FC3ABCB
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174697739357.5175.18296481918581041660.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45409fdaf138b6bdb0937433fbc4a8c5cb8157bdc0f20a8c7f72aadc56767b07
Date: Sun, 11 May 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746977393
