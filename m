Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 423091DDE9
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747319395; cv=none; b=o/1Kn994ly/VmPwddK4T9c14PvmPVQwAhFCWvm2Kcf/SzfIgCi+U0lI/w464l431b0ltHtrtxolHicV7fxU7zX46MAz9UgNQfpSFTI+uWWxNfRaH71638WOv1PO+OiIjyG7f+J7rljq1NKugMDxsJucg5gVk1LK2yH/vKGMYNE8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747319395; c=relaxed/simple;
	bh=1XLAgnvSj98s+jZvpO+FNg/cNVyRKI8YLiwi7yXSCSE=;
	h=To:Subject:From:Message-Id:Date; b=hiOwE8Wx4kfz0U1tDk+upMnHvGtmAqcaPEzZsCRuLqHRzRSYqKDDNVsujvMvOHU1GKDWw1QlaEpBsXzHD1FohmgyldXimCpFwWzjPNCGyql563G+ee0Ln0MZZqzWmPJe7b/AFzdHOuzzNzAprDggCLlARfNFd7OPFC4x7ynEfAI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PJy4OMr9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PJy4OMr9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4DD3C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747319393;
	bh=1XLAgnvSj98s+jZvpO+FNg/cNVyRKI8YLiwi7yXSCSE=;
	h=To:Subject:From:Date:From;
	b=PJy4OMr9R8ql4gKGw2ju0DSnPZlvgkNns8LyBBEU03NlpC8kU2KQ1LveQ38X8DDqA
	 ZQASJSZQeQueC2khjYbsaTjXypBglHSyqUJpRbsRP39hvN8+GnRbJ3xSra/qMXPNMP
	 Dt29JxjJwUP4kFsLnwH8nWB1nES/bx5tXTQRCIh1vRuWCXU2VQ4cRqlWaiML11PQz4
	 ZdV15MKT/nHCy/xcmtkZqgOk/Us6dhcXag3d06NKXc0m9InlT3SGOTfqfygvo9vDzh
	 /Ka9lFYVI4vJeFzZFkPe3Egw3XZXwSQjEaaEYfe5F3NHQsp0l+ihgCY+AFZGseaF98
	 3SMg1z7ioHS4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F6F5C2D0CD
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174731939357.24025.18411940867124003758.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21933ee6d75fe2b727048fa6bd02572376e90a894b8925e1556ae8b09fa998a9
Date: Thu, 15 May 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747319393
