Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D6CA36F8FE
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 07:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778572234; cv=none; b=onLwQtXKTD3ijcqnThE0EJ3aMdf4qYS7iRMDC5zzOMkAT/ZD4fHwxMGM+3wTKcgfTin8RSibCvWNzZ8jJMZnii/OKqeVLN1qgowaPpUuov6cgO9rHqxm68quHsRzXMYP6WAxfEyM/yLQEBK3j0aSn4Edl8L5fqsp//12LkcnHJM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778572234; c=relaxed/simple;
	bh=VZQymsv2oGNbgAv4n+bM80kVNL0sTxVh6gQ4K6XhKvU=;
	h=To:Subject:From:Message-Id:Date; b=JSxgFY6LHCUIPxo07ugK4VJaImlBw9PXr/DlfuvIZ8XzG1ecLIIPQeMbDx3wuYyr3hwz/of0L2xVHgdaN9ElBcWbyXHu/B9j4yiyAysy0f0O3Yzcg6ohmnuVpNwftURjTnhn8sixVkzeCdLVqL8i06YbpCI6Z/nk2WJcHeAp2Oc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KvYL1A4p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KvYL1A4p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8DBBC2BCB0
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 07:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778572233;
	bh=VZQymsv2oGNbgAv4n+bM80kVNL0sTxVh6gQ4K6XhKvU=;
	h=To:Subject:From:Date:From;
	b=KvYL1A4p0E5oS0hY8IhhIOZUEUo8wK3MPhcEyORsZ+UhYbzqIIxMeXbL6XczePmuV
	 NfgAqDWe9fuof4YFZzpAUr8QMRidwtI+XIXejNdZ6m9gEhkO9nSPCmpNObKFKpE0of
	 TFCd7ybAVN9/8aO2VJgq/n02jXiL8rztDXx5QCjl3oBYvnPUVljVjVM03DpGHKi4ZB
	 UxFscOR/4wy915GLoqFV2NXnvyCwxaWiDWUmGsy72OjhCIld3aK9jGk/htLSQppILx
	 ux3+J2IMtEoDVHTcDY+tOn3htcwEpD/YtcODXhx6vfmqiC4pHBHgbCY05C9uC9W/U6
	 AefrXBBniTPYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC5D8CD4F26
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 07:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177857223369.21585.2944595757751535892.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b31ee304d623206d56859eb65bbf341aa82f44699c8bcdf797e76a54728811f
Date: Tue, 12 May 2026 07:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778572233
