Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7605C803
	for <ddprobe@lists.linux.dev>; Sun, 30 Jul 2023 08:52:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDF50C433C9
	for <ddprobe@lists.linux.dev>; Sun, 30 Jul 2023 08:52:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690707128;
	bh=xz7oy0z1TG0GHPt81/jSMCbkmsuHHqwZimdGwDS7m68=;
	h=To:Subject:From:Date:From;
	b=VvrY+S1yV9XG2d+/3HwbInza4+XP5PKQRYJsFhVwb50uNL+AoC71r78zNcS4LSSfS
	 z5NxTDtpwamTcBvCTwhsFFbz+n6sOzOAPyajg/x2ziX5AzUsdtOOtXUh2Mqc0dENDm
	 KVineDWc0QdXm7ofSMj6Zd9pt6aeXbNpZMi10rUP6YydXDWmDS5qNcnXtItkwePV21
	 114mGnr1SNdSax5zzfxemwZkjh1/KCRh9kAZCgjIFbJWLGTjIu7ztEVEqkG8aNpa50
	 blwTJVLabkjGkaEgUyQjhdw3rm6gR4S5gS9q3Gat9JPBVJexcoZcIBatGwByi8f8L5
	 HItm8RZTPIkog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACD91C001DC
	for <ddprobe@lists.linux.dev>; Sun, 30 Jul 2023 08:52:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169070712865.15928.17722363727948394202.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2055a8139da91ad4389d357da5c02c95aa10c5a55e8f9c3fd0cbe6d0dba4fbf6
Date: Sun, 30 Jul 2023 08:52:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690707128
