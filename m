Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C45543D6D
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 13:30:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75A65C433C1
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 13:30:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661520652;
	bh=GfWFY5sxIW1k6tBAfN+5NlT2S7kyUp8Bq0powajXPDg=;
	h=To:Subject:From:Date:From;
	b=SYC03NjLGiyAgw0dP13nidvdDCwd2fI9iUI5CkpKoM2Gh2/D0z8BCbqM3y7+gvnH2
	 lPAtAgc0ePxBflEAJaLdmxs/4G0hXYjXDyFmhQgZLcXURF9lVjUNud7rBznTnX118P
	 3WKO/IPNmc22LRRDf4TnLr77+kguh1RencZ2c96RGUDjloQzIfhR9+rVcXXgNeqZJ5
	 m/axZ43GiYrR4M1OpvVTMYWNpe516G5/HiShESgdVgXtreM9nkoBrIj/wMCTgRN3tO
	 W+mS4W5p7C8fo4G8YGqxD+vOF/ewg510KbkdBNOhwlNl6R7hNCzbwXHclsq5wYnXF7
	 3aBkD3tkgqvHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58A43ECAAA3
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 13:30:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166152065235.15231.15618863522164165025.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3214d37c416976756799efc12e0c6a964d9fadd773c00702b578b915b6cae78
Date: Fri, 26 Aug 2022 13:30:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661520652
