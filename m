Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B72D72568
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 15:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6FA49C433C1
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 15:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666884654;
	bh=htzFpq790OFyz+AONHAtmDusgeXV498/y5x2/MxjgR0=;
	h=To:Subject:From:Date:From;
	b=ooGwlcCMBWINhPQtjwH7uGGQGR3PdVHpP0PzrD50JYJz56T6I/VmIPpXtiVbuMhM8
	 Kjrz1I2mLiSPtJIR+hlo0eyRHQz7h8e1o8TYMOqxux9wKU+kFlSvzCQ3TF+RbYc4da
	 qOwnGalNvOc48usDtgrY+JQGgZgMbdt3llIQaGKwUUyEO7+Z4SEphQObrCFZmXe5Ld
	 3ne2nGRmZ3mseN7asqwDK6LyGms/sRDPifpo4TZwX0WKPojz4oRAt/Cq8AP5NCjGuG
	 4+AvT1I8sNteRIICxUIoO2XQJNfw43DSEABkYjk75lZmY33oWFWCVQLRsitYgy8JQ9
	 Szbsm3loILVJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51E72FA3740
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 15:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166688465431.14479.7150894408700528319.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9c68852c83d132258d122bc4186207da650d24b040e5ca645a77c456973d5ac
Date: Thu, 27 Oct 2022 15:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666884654
