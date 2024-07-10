Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7582B86AEE
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 08:26:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720599983; cv=none; b=UuaOaa+apgGA9/hmh2JSxunMJqtvAihZPc1Kye9GtaFnLnmPpf0AIiblCwFJX1EhzGlSwJgqA2o04Wy5k//zXHS0LIzpjTdpSuLXHX+zEnSGskV3wwxRaBEgbXAjWNkU4xP90knksO4eNTC8WwWXb+HKkyo4BziRSu8WFO/uaz8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720599983; c=relaxed/simple;
	bh=W/t8xWMi31+Ggbi7Mu0AdYKZPaxCylmS+2ABOxKjb1A=;
	h=To:Subject:From:Message-Id:Date; b=sPuC8/KT05Jh0cFhcbtHj7Jz3o5cxB8Wj6JXGXMkm0ohxdXiK+xbXzPJwZuERHwd7TzePjtQ/SF/pRLXb1FElX2fGU2NZH8MOfO3+3RBPKC05pI1NS460tF9eR+pu//xzM9exk5VsiTw8AzNvYxz2GS0f9Uqb1lpV1jXoDLY+6M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dJAOhODM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dJAOhODM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 1E56FC32782
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 08:26:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720599983;
	bh=W/t8xWMi31+Ggbi7Mu0AdYKZPaxCylmS+2ABOxKjb1A=;
	h=To:Subject:From:Date:From;
	b=dJAOhODMbP2p/h9qNh1uKks6a0Sb450mu9VcjLI9UGzPRw6YuA51u0eRqh/69CUaD
	 +54biW33awwtiJqdoTUkaKaAYum9C4GuJGRR0Le60Q0Q0LoN3xzxeWoVPfpQ3aUju5
	 2+gPU2bOql4EUOjhaq/u/noFVLnmnq90KHFSyn+j1K8YwMbgbEetVnLFp3RYRz+Wf0
	 zOrIkSquT+107p+L0haDBKbQMAwoYYfdQBX4mPA6evsdQDWRwR/0SVwlD366KGVEJc
	 4PBHeXB6ZJv5a+ITBm3tJoKemECLIJGGsxeix0c74fqZy40edw02lw6Ks4Rh9w66cf
	 tJQGgYfUwlIeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E1C52C3DA42
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 08:26:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172059998284.16515.17208880054290750172.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15809ec8b43ee3b525b246fae83ecbf6802ea654572f8445a5991eb4af602817
Date: Wed, 10 Jul 2024 08:26:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720599982
