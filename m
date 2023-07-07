Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6970FC13D
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 12:07:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC16CC433C8
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 12:07:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688731628;
	bh=qrFfr06C+s3ooY5NwBMyqqgANNqE+OMBTrlYf9zE6fA=;
	h=To:Subject:From:Date:From;
	b=e0mf4HJzL6Ym9nwpQhvl8Jdr4FmkOHKZX++guxS+gPkwUNs7JEYJv6Ipcx0nfLGz8
	 rcQjBOSlU25ampwMpMyxdEIhDeOiehf6wXjqrp5ZoasFOKM6RGZ6vmtEZl7DxxD6ZR
	 GD4GVq/KS3VzU5UJh1ApV3h97GEDBO/9KEbSpggMfZyvom0ziLkPLZ1GCeQX3DuLc2
	 /MQVyE2XcMK6uZUK4c4odoSSUfJPVSMTTIIl54EPhXttM3ru46SSR4xLR4Wy+lpSwl
	 jl588PEt+jjjkZFfb5O4r0aPtoaA5UFohQuA2XVqz4KzCa+bjzVpE3OsXykufGEsap
	 N1O/elcnGaVjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEFB5EB64D9
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 12:07:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168873162870.24340.14297221394505732576.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40acee9e2b102c6982c570aa0206462d54942f9b08b6671e618d4740f48b871e
Date: Fri, 07 Jul 2023 12:07:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688731628
