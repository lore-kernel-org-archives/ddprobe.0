Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60DE88F65
	for <ddprobe@lists.linux.dev>; Sun, 21 May 2023 20:23:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0AA13C433D2
	for <ddprobe@lists.linux.dev>; Sun, 21 May 2023 20:23:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684700586;
	bh=E5AsDA8LcGaSAQDdou9SW2mAP53IVIGu9wu+++sDCBc=;
	h=To:Subject:From:Date:From;
	b=gGPR4s4YKmNLVKsckXy1Yrn6et8pHp/9BqkYNp8kKHuCOCGGSS/Loxsjw7JmeXnfb
	 vmiSUjkybP4RxLmK64ds+PQSkEgLyjiPJdq7emiu/+VdjT2q0hdmhz3djVVvMA9bpr
	 yy8/LhVhkzS50HDIQ2dRuQ1Vxd+C9Rj7kt+9sYBfSbwmcfbVS1tsntuAPDadXDH3zL
	 x004P+WEb9K2Et5rCOzy8WgWHhnQrHpUM+vA7sd45Da/po6yrQepOpsMbaMl5OAQMl
	 Qwv/H7WcfP9SLcRfJDSATOJ4V3qgYCg4CtKmyjSA8+cXxkPxIpee1k1T4mAx02+C3P
	 Nu0CbsxYhet0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E1E54C77B73
	for <ddprobe@lists.linux.dev>; Sun, 21 May 2023 20:23:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168470058586.17262.16800251700668251707.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6eefff211bfdbf314f38b6b5bee4e3e4349672763e9e213a1d05c4c6e182f1a4
Date: Sun, 21 May 2023 20:23:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684700585
