Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D97CA17E1
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 04:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 953F7C433EF
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 04:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671684087;
	bh=u9CpHXeeykh7U+SJTck7UJvzUyt6p24LMWEztV8xU9s=;
	h=To:Subject:From:Date:From;
	b=kR4FTouN2DXMzEGpPekNKWUf8GHXSLVCWenZpY0cIexFa4z8DmaJHst5AaVz51T/5
	 +37Pp9kjMOBJgNrvbx3LVUctdmEmvSbSvh2m9n0Fb7M/7kXCSlU+v2pJslhTXis5Pn
	 1c0BiZunB0BM5JuoCWJUocLzGR/nxKL/1KWHNA1VvUtaqSBDkfwXcuoSa/ZsR+hUyG
	 ZYNxJ6HVD/XRXF34+6KLHMWma1pIRWj7q0Guz/z55Nx2+dbSZV5fJSoiw+yERQLhUs
	 wRBdZemtLFyhBma4EPFCgIFkAn/+4/EzGWV4hFmv8YYCU7CqAAQqf+Chp6qm2fDzJT
	 Eiq5Lr8LlfQsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6D9D4C4332F
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 04:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167168408743.27364.7408201077832898897.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8fc97ff98a4f7b31aab352b35ee257102955b4459e1b8a5f7bb845b6f8e5090c
Date: Thu, 22 Dec 2022 04:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671684087
