Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3FDC10E3
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 13:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80F7CC433EF
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 13:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671371487;
	bh=DOuYOoRQqMxpBIUKRnP76obHiO4V7ZTG+d4YU4SxJIU=;
	h=To:Subject:From:Date:From;
	b=eMcvhgaeJXevocG6miXy72ZLonmd8aMvPf/pstS9OG+dVJ5ypsiXdImo6zZJog2F1
	 wfEC4V6EP9ayvPOtOkFXgW2OrTI3I+kQujiPLycGPRM65SVgHChFbr2aP567ZFq5rg
	 iOCGdUGb/hiPBn2ytfAwGoSiABaofHSBclf558pnwo0qMSPQ1WwowSLknNQeXcEANw
	 o1QDI9LWBH5QgfRdm3qhIKJDPtJGBBH94LB7WIqL9RNGuGTJ+evjNYxym+wL7CZXXe
	 yj2RPYF03Co5cUg0SGDRsbgwZDTwvjbg0bgnyxZoK+dSV5tAdoLDkL+lJ79w41U7ng
	 V0j9ijBDw1zew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 659C8C4332F
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 13:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167137148739.14006.11845893372870428599.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ff1d386317db9ca571e994add3be2321cf59bd00a40126d44f5082406dd4e6d
Date: Sun, 18 Dec 2022 13:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671371487
