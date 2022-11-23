Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C76E47E
	for <ddprobe@lists.linux.dev>; Wed, 23 Nov 2022 03:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79428C433D7
	for <ddprobe@lists.linux.dev>; Wed, 23 Nov 2022 03:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669175454;
	bh=eKhOSm3L6TH/zb32QmFonAwY4bQZ1d1uSTQacCt0Mqw=;
	h=To:Subject:From:Date:From;
	b=LjeoJqcuojr2iPAXyCHYkw4mOtQtcyQTIJ3EuPmgnD9T7SXnYVNcYpaQjX5xqQYHy
	 S0uG8zHAtt8xU+sjXgC3GcKO2PfzZwoFILxA7FA8rACpK879/YRGrKe1TXmV6PvCcy
	 715GEzTx7+CAn3kgU36J8yTXlXQ56RoDm7CNE9mNEXtkvposaEGg4Z/+Sqx6Tbb40w
	 o0iZAARx4+Q2czpknh3jl7fHRcBL/MPUYWH8CO0I6F4hOaVcaJr/1XYelVIsHzbaHa
	 wuhVpQ5pBY8OMJTsLUMTxSLa3aa8E8gFOheHgPXSCADCO8YilQXJ1Ya2lMvUDFN0AR
	 DjKVg+R4qlarQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5CBE1C433FE
	for <ddprobe@lists.linux.dev>; Wed, 23 Nov 2022 03:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166917545437.28059.14034218711440056961.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5f7d9ded75e5ae09a18f191fc028f9551855afbf1285f93899c52985c3952c0
Date: Wed, 23 Nov 2022 03:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669175454
