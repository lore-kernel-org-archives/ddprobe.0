Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8F8B1FCE
	for <ddprobe@lists.linux.dev>; Sat,  9 Dec 2023 09:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iiggsUKk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7FF71C433C8
	for <ddprobe@lists.linux.dev>; Sat,  9 Dec 2023 09:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702115896;
	bh=TRcCnNHNhyG/AEa8gzASJVL96kcRfJ9lurowbJZOisA=;
	h=To:Subject:From:Date:From;
	b=iiggsUKkuT/xOIJXVMNbX0Cvm6mIumBKxrFC0RpJEz/rx4uXWAx+ssfhG+hP3HxQZ
	 disM2bYJsK35tF60Hjdgzb2yUNEU5x8kIRrhv0U33JsUq8lY6cKNyIwuYpWA89AxCi
	 HQv+CUCCLc2XL1fpB4hrWBwe+PvlRHs/cE7quLQuDiDZ9je3lbM4CGDegCNEf6XkPC
	 OJNrC9LsPrEXUCYqdKhCr+u8MYXRGIin5uchX/OlOeR56shjnxgKPcpIRrv1lPrPku
	 HPxOuyXolOmguoSUIUbZC0GjHdZpNNTZJJdrQ9i7Lkt1WPay8eDfOrDqcPB+ORpPh0
	 tABvrMfbnhT1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64F28C4167B
	for <ddprobe@lists.linux.dev>; Sat,  9 Dec 2023 09:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170211589638.28382.7910358044151344782.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9869ecb99c5f57fa6f3373ee4bd0352361fbc298c93bb4f89b31a1089fe90af5
Date: Sat, 09 Dec 2023 09:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702115896
