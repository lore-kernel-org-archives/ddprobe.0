Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0E0227719
	for <ddprobe@lists.linux.dev>; Wed,  2 Nov 2022 21:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D5A1C433C1
	for <ddprobe@lists.linux.dev>; Wed,  2 Nov 2022 21:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667425854;
	bh=1DCcGq/N6ZCbvm4G02TcX773qyeHpTBuSmVein5Pix4=;
	h=To:Subject:From:Date:From;
	b=F6DhfFIisBwrzkO1t74X0MrHiLNQPnJYr3S2GOvHKU4Zuz0f5/bnZocQj8YdZ6HhU
	 s6R24/M6BnLOaBtOmylG0GLaJTZnXO9eVzQDTILpnWtDFMl0e2MiTigToAO1MPRj71
	 YJmIydqHDdEuHKOK14poe5FZhkRDbjQPN1eomUDFzwlsm50c8+EH7N+CPG1Winbc58
	 T7wFl6xlP3SoRH5rTFAdu6uupRM4f4pTNk01fP64NfPckByIYxVaBurceoqYpNh59D
	 mSXpKlmFzLgD5uV6kWWVHqnh8/6J0RCQe9AEArpQo2JMfTH/3BxqArSHVRinBx/qzF
	 N5UXQuT2sQA8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FB7BC433FE
	for <ddprobe@lists.linux.dev>; Wed,  2 Nov 2022 21:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166742585438.9183.9286168459964376160.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e12ff6fe1fbd48aa62caec6e61b65faca03c2749e1978f53bfbd549d155950f1
Date: Wed, 02 Nov 2022 21:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667425854
