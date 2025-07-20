Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22D7143151
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753004994; cv=none; b=NMC9ckm/s5gZ1cGUN2NW71Sd3KWfkarHUZDGKqb5uSqejqDkq6Wa/k9xM3aTLHvTxVDsUwX9vGhVNj30JJuHtkZtkMSm3CkL3GQUFyc0l1DQFytZWCe82t96FdV48dzT/3EBlyz3MbfvhCYRO/0ws7P1nJKJsZ/OcNZDLVidXGM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753004994; c=relaxed/simple;
	bh=HEN4XlLKnVTfDHKwdXwigKjS0aT3LdNsOxWq3ReVR7A=;
	h=To:Subject:From:Message-Id:Date; b=jNTutU/aptnU3lF0yTKgfEc/6enIP2MDUAQYOFtrkhXJ+RatbOoyUYyZVgDRnS3+fKwi19UMCGdgw9aI2skQhqzf7XhqBSf0vtamM7PZXPSU9Ipmct3GiNFVK8qG/WH9YMWR/QIxHtBnxF/PrPKqw4sZ5MpkVXjg8c+jUCQugyo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=apeuej/j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="apeuej/j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A53CAC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753004993;
	bh=HEN4XlLKnVTfDHKwdXwigKjS0aT3LdNsOxWq3ReVR7A=;
	h=To:Subject:From:Date:From;
	b=apeuej/jIfZMqEVcjO7Ig+Ns0OSvuLGbBDSPZAtSF67Jbt1qmNPjM1vLS0kg2Wxf+
	 iZHxxAycZ0Zq2fzKysZTiOrxlToB3TkxeZR2Dd7dLLv5MfbZOkdGgh6OcHPjUOpZIO
	 FnR+TGLrH15GztOSHyKWLIrrusr7Z4Sx3aewoa2UUWlLNpTEO5JqKaqJsN8LWSQ/Kc
	 MGDDzemma/LeFrVMrTCfjZV4dHR/ikOPMT88wNlvMHlOQwdvxhseR8M3mde5D8q7nI
	 ZoNcZ0gEvqDBYgMzjZnwrStw2XvSChaYq1TjI7in6AGmALI8NBr2LdFl1qWOBjSuM9
	 0t3B0eFOLc0Cw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 903CEC83F1A
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175300499358.9751.4306079415181949701.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a932924356e02a3070697722e1d8668da374f505b1cf1771ab73aca2fc3754a0
Date: Sun, 20 Jul 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753004993
