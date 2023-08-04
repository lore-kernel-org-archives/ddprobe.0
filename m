Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 576186ADF
	for <ddprobe@lists.linux.dev>; Fri,  4 Aug 2023 07:13:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id BED23C433C8
	for <ddprobe@lists.linux.dev>; Fri,  4 Aug 2023 07:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691133188;
	bh=N7d1d1ARqpixtlEFYuym6ChO+h/vICp6q9+8vYspwXM=;
	h=To:Subject:From:Date:From;
	b=rRgWXXQxr+v9T4E5EtHOLIlZFnWaiTKAlGP54+4qzrYP5kNUx+l1ix1IcAYCPu3So
	 ADeCHwMfdFSAI74j2Ky1wNhOBtmwv8RVvZPoSVRRrYMNOwQrEn2VlMakzAr7VbPr3S
	 AjpL9x3geVSjczKf5I0n3ctwBfiuf6O3fYUzogHsMyNIVqRp2BlMJmRYJxFsWMpBcD
	 +y0SlWAzD7u71b7xN+U0+tQilRBUbK+tm3FDEs48zMAsGiVssKQh/3IisJ3PmKBdVh
	 bCiBkKGc40PEkgPMtCSHGo2Xh3eyHRg1dWM7/r6rB5WEE6H/vQ48W0XkF9Ntv4SHDH
	 Om3Tsuc6e8bYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A302CC04A6A
	for <ddprobe@lists.linux.dev>; Fri,  4 Aug 2023 07:13:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169113318866.9213.11607327904947770562.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7ab86d0dea9702c495877a0cf40f8969530cc1475941617e5a302a3391e1bb5
Date: Fri, 04 Aug 2023 07:13:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691133188
