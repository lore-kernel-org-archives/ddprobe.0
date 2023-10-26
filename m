Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0398319BCD
	for <ddprobe@lists.linux.dev>; Thu, 26 Oct 2023 09:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IGonmPNA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D5F6C433C8
	for <ddprobe@lists.linux.dev>; Thu, 26 Oct 2023 09:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698313096;
	bh=xdPbui6BlnRip4QT8eQvlPgrWEWf0u8uByExJyy4KLM=;
	h=To:Subject:From:Date:From;
	b=IGonmPNAIz+aMMaMCFxuKVL/0n5QJT1K0Q98RXtcxFxSi4/ZYdK5Tf40KsZZNz3Hw
	 ng67X8DsGpQitJUSkStwhIRlVom0Gq9r+kbVtfEgHJcnqmPaMO6aRzkCXCQqY+ARoh
	 tkv7yNgSNWfH1EDC99fL8b877Reb9lwoWNQUk0txG0wrbGf6hAZ8NhGU+d6goAqxsn
	 BNsChu0rg4M+Fig+xIO/xTT2PRI6QAqD5VLwjooS5IHPt0D+rji+1ZHOcabArTLlkG
	 C9hBq1aDFrlKRiUYHPmUv2axc33XDZNUsDKyX1faUvE6/kU8bQpv2XnqUAn0Kx2w44
	 zG47J8/TJ9F1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64D09C25B6B
	for <ddprobe@lists.linux.dev>; Thu, 26 Oct 2023 09:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169831309640.18633.12297044703084111719.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 778aeb8fc4ca229df902519f43c694c0232f4ea99fc0e5c32a92de2a0b43d12a
Date: Thu, 26 Oct 2023 09:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698313096
