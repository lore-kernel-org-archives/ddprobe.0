Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9BA17F6
	for <ddprobe@lists.linux.dev>; Thu,  6 Oct 2022 11:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6CBC6C433D6
	for <ddprobe@lists.linux.dev>; Thu,  6 Oct 2022 11:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665054653;
	bh=HpOgQDxgV1t6NMSEIeEIRDvefdw10piTY6hJJFHpkP4=;
	h=To:Subject:From:Date:From;
	b=arJZl2BX9XY6v253lTDdZxAJ968Cfz2BEse0wXy+lXj8u2lnCGZCmVExa3e7ezWiq
	 BlqhNXpU8nY/76wRc4rV4pnSVeuJ5qJn3N/xrZkhW5o7sv49jk2kYELacSCA/6kAQr
	 nm4VpvKsAdvOVSSn10qOxFrMkBtoF79ZmdoanQporGDRut9KqXJEqte8w+dJN9G9Wi
	 H04x9pDwQ6cBAoyUbRrIqqiY4r5XDCmtExMp43WL72JIKWngs42BtgEKMJWMvRFee9
	 SRrQHmg9Vm5rZX4m7IXiP0UQK9kOC/A+s7Yg+/W7KDxXpqlYNJL0CEOCWd3thexox7
	 +A7LP7dLSKOeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F449C433FE
	for <ddprobe@lists.linux.dev>; Thu,  6 Oct 2022 11:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166505465331.26008.16088466715164856502.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f7fc634f08783ab7eddfe6fe2d30eaa1a5fc9bcdaa869b67d6d22fbfd76b332
Date: Thu, 06 Oct 2022 11:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665054653
