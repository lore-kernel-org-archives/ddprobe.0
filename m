Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63D508F77
	for <ddprobe@lists.linux.dev>; Thu,  6 Jul 2023 13:17:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E016DC433C8
	for <ddprobe@lists.linux.dev>; Thu,  6 Jul 2023 13:17:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688649428;
	bh=Cg49SR/3C10Ii12MAft2w/O1N6I0gNt1oUg8mvnVfdM=;
	h=To:Subject:From:Date:From;
	b=sSyWYPmNq4RA3gIjjUhYnxS/xQ6hWvLbMoUHHuIMaCnc3XER5tR2kHelte9XgtXNG
	 gy5jhbi8+iWOKs8pJFTOz38qSCGAeGiGdVpc3DW5EWHmFnwabC+xSj8Z1kT5yh94sQ
	 A1U/h+C8QgCraVTVjPnIeVdd042CjH2wl9w6NksBP+sWKfpDTSWct8sRJ60056xnFa
	 QEALC09+2f2dhisObjTY4sUy2LjLv3Kq1CM2BRf6/RtDy0AsvqaYz+XJbA5LxPH3su
	 E+WTMWdNHX/JA9pT5DIovJx2giNPzzdK9Ln2bTTjPyaYxgIOE4OZL0HeZRExUc49/D
	 pOqajRE3oiK7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3BA0EB64DC
	for <ddprobe@lists.linux.dev>; Thu,  6 Jul 2023 13:17:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168864942879.16877.17253971763816441197.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f9675c538aa8cc08a340e5c5af4bfaee4b2d2c6b1f1c3ae69a2ef3544f912ad
Date: Thu, 06 Jul 2023 13:17:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688649428
