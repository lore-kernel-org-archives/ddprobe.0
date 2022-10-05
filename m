Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD5CD375
	for <ddprobe@lists.linux.dev>; Wed,  5 Oct 2022 01:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73496C433D6
	for <ddprobe@lists.linux.dev>; Wed,  5 Oct 2022 01:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664934653;
	bh=pIuXA+1hA/2z0PmedWsxx04QC4Xpf3h2Jpx0mXLFnZA=;
	h=To:Subject:From:Date:From;
	b=ObaqOg684ZR6wyNYDsf4Nby177F+p4FF/UxtGzOnXkT8e3/JA5WtjJHUrruTTnspA
	 teqvf/pT/cs0oxMsXXFeb3MQfhoy0an4xUcStI7w0OdnoaFarbr1BDYRBFoQcLLzhm
	 ECrdfvK2ARwOuePTCcbJKoVkGWVByRwx+H8GH1ry4y280NvWz0FRr8aXSVQMO+Ges1
	 dOPejtgoLLvd1Qj3Q2H8fRJP6vk8pcyyUv5Xj7gMjg9Kj5OBF0EffitLHG/k9KcKeE
	 QqVv2iI36amccBb0g/z9X6oQdl0/DBJnZjCA8cJhvY+IYJy659mQWCw13Wd8YzJ0N7
	 8gBLbr/fH1UUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55A82C433FE
	for <ddprobe@lists.linux.dev>; Wed,  5 Oct 2022 01:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166493465334.28523.1563519172383186988.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d12a8c2d07008d442577132c48e655c55da846f804e99a97cfa7c5ea00da700
Date: Wed, 05 Oct 2022 01:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664934653
