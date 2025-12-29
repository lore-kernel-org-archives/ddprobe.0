Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44C2A2253A1
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 08:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766996034; cv=none; b=uTRVNd5pvqYcwtNvUu2TaQd74QOM/g5VUpeifl8Z0JmVCmN3DhScD0elpH5wcRooeD/EocjZ//LyIkpGmTeU7/t6GSk+OJb+/ZSgl2wXyhSSoYzRqoS2NLhc2CPuQhFk2x0FaoBQk+m/4s3cclfHlxxU0IZJZEDQsz/N/R3yHoM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766996034; c=relaxed/simple;
	bh=5goXZqyPbXkNDAkzT1F546qMqez+9GYbmNcwzoF70nE=;
	h=To:Subject:From:Message-Id:Date; b=P1K4+kQDu4Bm4LEDJOPz6tkAxCYdSrL5c8N4E4OUqfwfK9Db4AuBeRJeMkdYmFKUEx7zVnjp26fI8PYJaigLDLCBmMSSP3IW+EtWDm5nMvUg/ojAuVrRwaLD79HbiWxtOC/IGopKtQIaH1RPrT8nW3qXf3JjFmElEShwEAUNZdE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mz/aR0c1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mz/aR0c1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0894C116B1
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 08:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766996033;
	bh=5goXZqyPbXkNDAkzT1F546qMqez+9GYbmNcwzoF70nE=;
	h=To:Subject:From:Date:From;
	b=Mz/aR0c1rlmjLivDKX5EYpr/56+WmdCAaOumyRFdw5nOZSxsvRZ8a637XKjUHUozw
	 AOFDw4ww2MhjWcGm5vz+pRWT3a77S5ihobmqILeqpAmbVA9anTcE+uiN1QSmxdIwxj
	 nwpJ0/gCDba5WsR8qEFxH7od2BNdtVt2oiu/7noMH5G7CN+Wk2ft+pMJdk/Pzel6KI
	 4jMQswZQFyA1X/2IY48yq3KHhG9TUncRsmnK9XYpVuOfqClkWCAANaWSW2T0Lchc0N
	 Knb8o9oVtpfK1PVC02lfJeAQ+EORHi+Ijc0aFFG8IXVL1XsX+DnhYJw6jJH92NXsu3
	 crJq5zySLbcHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93ADFE8FDB1
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 08:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176699603359.14786.16051669544929274845.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20de1c98611583690b9fc4576726f7e0206572c0a73a76f0734b971ad3cb69cc
Date: Mon, 29 Dec 2025 08:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766996033
