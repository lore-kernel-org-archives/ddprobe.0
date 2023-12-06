Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 100A513AE5
	for <ddprobe@lists.linux.dev>; Wed,  6 Dec 2023 07:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XjatLgXJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79F17C433C7
	for <ddprobe@lists.linux.dev>; Wed,  6 Dec 2023 07:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701847096;
	bh=L4lq1My3+UPWASHRep91hCyfdmtMV/S6avUYyNBs4II=;
	h=To:Subject:From:Date:From;
	b=XjatLgXJ15Sa17qruIBt560dVYNavD3vGn071+WMbnaDxtvIn+UWL1Pg6iZfEV/ny
	 VOSG1n12PnJZoa5Jvt4UymHOb2C65P6UwcVM1jV5oJlr9lb6sCJNO2St/PaVUISdAm
	 Q1Kasht5qjP9lXSL6slSsYRJI0d3Opy3VCXpHkmapNHD7m2Fl8oIN5gsRYQAUNLma0
	 xrB+w5uKPXtDtijH94d3nNGFNNG9/qh2YKQtay7BL6C5Vrm3KrwGOyeiVOZ0wPt/dP
	 FzypbRyU74woPlANOfTfnEfT+fedshp/Mo0+HfGn/eo8qn7xO+ZLCM+xnflga4+T1K
	 hcI8sXC9Uxxgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E8EAC4167B
	for <ddprobe@lists.linux.dev>; Wed,  6 Dec 2023 07:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170184709637.754.10694427966175518810.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22033c61fab39e9fcdeb641d968f8ecd26ac664365cafa7964a5232533736011
Date: Wed, 06 Dec 2023 07:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701847096
