Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BC0A7E
	for <ddprobe@lists.linux.dev>; Sat, 21 Jan 2023 08:22:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F352FC433D2
	for <ddprobe@lists.linux.dev>; Sat, 21 Jan 2023 08:22:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674289326;
	bh=Zl/G4fXTAXtC6DZSOMAi7LNz4t4EFb9g6QiQvmyHOPw=;
	h=To:Subject:From:Date:From;
	b=JddSTMDCL00m6Y4lRVdQw1CwGjsCou0WYINtuY0WdRpnWrPF+vPFnSYrTXzcXBfK2
	 id+qiuslDnTfM+rGvubJi4UzEpKhnv9UgDcV0Vgkn2XcWsBfOhRouFXoah1+CMUsJr
	 kyqi/UVdJtUQaCcuSADEcMGu/ojdmq0U9k83xWaV3UNYpVrNrElU2sWisWFuApL83a
	 1V1Epv1BNWtKTLVIBcT+xEzfi2f66fmPKIscU3Lko9BcB2cCcPQwXDR9L9Xm+TAjy/
	 kEcZAzKKVNmexw2Vq0qadxo04HXdDNKUeZaTM7972WmHbTEbplIQdoG+pT7prGC/RY
	 UyQTUMACD96Iw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D3B75C004D4
	for <ddprobe@lists.linux.dev>; Sat, 21 Jan 2023 08:22:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167428932583.21221.12749790832908818036.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b78b2838032c5de24cb3d4b3115bd887f6fadcc551129bcbe026f8cdc2b3fb6
Date: Sat, 21 Jan 2023 08:22:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674289325
