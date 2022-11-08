Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B2A54A480
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 21:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C181C433B5
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 21:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667942454;
	bh=UIxy/IUQe0PuAQslIeEraYPXDZJ3Ml+e6+7ieFL30Yc=;
	h=To:Subject:From:Date:From;
	b=IzqTRq0RA2oOE9cTiOeUOit5NISvoq2j8K5iqHU79awg3clbg/Mf7Oa+IkaeNK49e
	 jbE8conlTZmACArL+rF9Xeom6AbHWFJpKBnI4G2obrlX2bMjJMDiqOnTucnL7TLabk
	 EiqHxJQqyjRJo90oRR+DcSN+pTpGX15+EbTEsPgsMm3IUU/Rr/gkwAodvc470MsvMq
	 C+USZWC63EQaV24g0xasihgcIk716r7Pw1jRuhasW0f+j2LKXZdasfi+KE+fOUOYQW
	 qNqv0XI/OJgBDGOWTF1Hbne6r+QLpWlB92pSJcxznT+DwyBhh1Bsi+NpkqlAs9slyt
	 dpwZ+lHD1r5VQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 550A8C4332F
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 21:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166794245433.2702.10807686351987179718.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 567adc70d6ffbbed8cc121b2634f846d6a7cddc30e416e0561d1b9b919194d8f
Date: Tue, 08 Nov 2022 21:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667942454
