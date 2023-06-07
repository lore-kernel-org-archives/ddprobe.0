Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7DEEB3B3E0
	for <ddprobe@lists.linux.dev>; Wed,  7 Jun 2023 23:23:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F261CC433D2
	for <ddprobe@lists.linux.dev>; Wed,  7 Jun 2023 23:23:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686180186;
	bh=kiTFnCWxItwmVBg3FdSrJuDC5yr2ButSJ46yQgrqYwQ=;
	h=To:Subject:From:Date:From;
	b=FhrACx14vuDTm5oZ8QZ4EG0sOe66dN1i/TjL0qBoS81tCzOcFOUUQkh91Vq0Bd7IP
	 qOrfarL+SFiticiAsMlNvJr8QoXcjfc4wBXnFiMDszlz38TM6FVi58p/4Ixs1CbENI
	 f3/0GN7zzNZYzME4l5819TxUyUle+bAkabSkaFoEFuzQHNyyR7WTZb4h7a3tvjh5BV
	 Z4kSg0gFPiea/yedZwcy0o8wdv8/jRyRGdxNEdYBSzsJS8LDTo6AnS+b5Tcay6KePc
	 V6TALN1V7jhndtPN7aDCCJB4f79nC6wLRjllVfpNv3RvTz3peH+oEE0V6HfX0gQTSe
	 n8+Pe4zffAl3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7C98C77B7A
	for <ddprobe@lists.linux.dev>; Wed,  7 Jun 2023 23:23:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168618018579.2739.2889587582838191190.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e10ddd1030db28f81088a6f3d835df11be0b000dab3af3ac18670240ce049246
Date: Wed, 07 Jun 2023 23:23:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686180185
