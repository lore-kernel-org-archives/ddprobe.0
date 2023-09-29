Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57EAB10FA
	for <ddprobe@lists.linux.dev>; Fri, 29 Sep 2023 02:06:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5ACFC433C7
	for <ddprobe@lists.linux.dev>; Fri, 29 Sep 2023 02:06:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695953168;
	bh=YyI/eA6hcof7tEWPeTtDcdwZRZ9AHNJp+0/XzqSmkDM=;
	h=To:Subject:From:Date:From;
	b=FmbSd/K9A/K1By3CtQs7sybj4rZq76xThabea2BpcHSbdpUdTEli7rNPmMMesyW/7
	 HQrxgRQ3toaIz2tSkL9a3G5U0NCkyLRBhT3MdnhG9D7fJP5OTN4GtYzXwMGlMLcrSn
	 YkA5AjR//fT6r38zD0f3kR+XyLsgJQhD9SP3BIF3gTPrOUSGwt/KcbK6rukJ9uQb8h
	 QWqPQZmIKmIVmsjbd0x9L7V4jB8I3p9YKtyi+Zx1B+WL/vKc5Gy2l7lrORQJ9C9S64
	 Px9KdHR0jFFE4i/bOS//WcH/0C3DIsoJrmYjhYTaW0dF0TPMH3Z8+QzvyUQBWK++C3
	 MV4wsFEd1vxtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5258E743D9
	for <ddprobe@lists.linux.dev>; Fri, 29 Sep 2023 02:06:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169595316866.10143.12559854551969692067.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6f4af091e80597f96171e8d306a5c933b84442a2dad3f0b25cc120243de0468
Date: Fri, 29 Sep 2023 02:06:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695953168
