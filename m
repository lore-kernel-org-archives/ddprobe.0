Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 84791107B4
	for <ddprobe@lists.linux.dev>; Sun, 11 Jun 2023 22:03:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0CA20C433D2
	for <ddprobe@lists.linux.dev>; Sun, 11 Jun 2023 22:03:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686520986;
	bh=csaa6Um3zFfagiuWzOZI6KylMYNXiU4fX80GGFzdKbw=;
	h=To:Subject:From:Date:From;
	b=M3/FmAq2ytofvIUofcvX9W2Ywk728sO18UaX8BzyHVZ4ggUvMsSL0imWG0b2bkeK0
	 EFeWytnGP3LrD0Gf6h+cWmpN2RzgJ7ON9siv2Td7sCsy6cq02CQcimo+5IxSvhwJot
	 a4lH58kPYTu25zYEDCW99Wbm/fb8/YO5CnFisbgT4wHCPmT5++K/6L5PnSKgHFzCQG
	 R1We8HbkQDpF6Ckh+xDuiFqKX2NhvZ+FJh0KPmmooKVysWdX3jBNHnICJE0zVEej3n
	 0uNSFmFiMTz+8fIbD+0PEVNuRG91vRRbxkDRCO43RHuqHKvNUfTZ3BPdCiDLscbd6B
	 7+RQs0afXMgcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9F5BC7EE23
	for <ddprobe@lists.linux.dev>; Sun, 11 Jun 2023 22:03:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168652098581.13790.813399242082583488.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08061ae3be92f2a9d4e8757ae0ab11096389f0501ce559f13fecf6fd9a52aa06
Date: Sun, 11 Jun 2023 22:03:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686520985
