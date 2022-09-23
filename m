Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF8511FCC
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 07:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6EFAAC433C1
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 07:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663918253;
	bh=cTYAwDrqqar/TdLi2XFJ1GdwHEtzALU1hLBgcIem384=;
	h=To:Subject:From:Date:From;
	b=fYwiEsann7CuzRvUAsKyUwnQMBwhqxp9LuABQwNxEMkBGeLwkMKGZMnE5d9JDDK9l
	 GyD7eTMakrNkKLN+gOwpmtNHtziXgqC9KW9BPgcQidBtnWuMZsir7wFILuhvlG+vwK
	 nU/RgvChLnvCR8+JRsewsdPME40Xml0PsOHkZMvY2/URiHjrZuANqjzvMo4fafx9Rh
	 po+WeUsmWGBEAUXHoOuAnwcMWCLAA87IpzJ+7LYx72Vd8XyfCMkn44do+UaP6cLMg/
	 ZFwKm68FO1vD/zGYbEoQUuzZOg17y2ChSZx/PSM+MywXQLYNVHwyuyvGfOcQMZwTK3
	 A6YwNdp9gwH7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5799CECAAD8
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 07:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166391825334.28693.16648039217648332757.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 411e44cdf2fa22527c24a493f60e5b2c05c86fd5a3f45ad5c5a88beb2263acfd
Date: Fri, 23 Sep 2022 07:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663918253
