Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E5C7E15C9A
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 23:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 99F02C433C1
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 23:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668641454;
	bh=4XFN6pX2WvUoT9s3O2OrhjWfdzybcy1b1d1SGe6ZpQo=;
	h=To:Subject:From:Date:From;
	b=pR+2EyQ/lPmblepBTmSqwaBGLNi2e4oIQj61aeejWE3RCE3g7tdBqJBA8oZxsczA2
	 q46TPCLtCn7ppAl/RTQw2i7HCeHIlvicHEQaCvR72FBEINWr2WTqCT+Zs1FbmNYUCp
	 19rSnUjGya1Psle2DyTIe+z6l6vu/hdoH1RxSrgkj3IuFj/6/Q99c6zcPRcTdiwG51
	 6oZEXeFoPutAtVCqp3vnpBk0c+TkRZ3fXlBxl+BcMrM2yGTXS6iJWn+Hov0ZLTiGYA
	 Kvh4RUfdpzRphFIH4Oa5qY4MgnMjvL3xjvLS5HMlOknB6cNrHfxdoJPaRM5nYHgnIT
	 UdzW+MGXXVs0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7DC94C4332F
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 23:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166864145449.22838.5015344262554373808.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1162784699c0b804ca60080110a412a069c16a6fce7544014d8e73aa69b1a838
Date: Wed, 16 Nov 2022 23:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668641454
