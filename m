Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F21A37F3
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 09:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 99A7AC433C1
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 09:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670490054;
	bh=ZdVEDgfhbEO+Qkj10Jee0pgOpAameuV3CZr3WBomm1k=;
	h=To:Subject:From:Date:From;
	b=qqIA/ZMzvTI6A0YbGgIpBiMe80nBuTT/L22FneochV4k2Kx8xJsEmfuQiv73K0MdU
	 4vAmIB3MpIiqmT6u+P59NQag1Au8LFv3VGjy47rerz+6rWH/fQ0imW/a6KSUql+iIb
	 dMeSQsuc4G/shgQalQmye0mom/MZYDlh9i3azOpz3R6vlaw3O8aiDi8u0VYL3vdi2o
	 xWA0/AuggtH8+6D2Tsuf9LNSTKpVNhLBjes1RqnGtWXRCo5il595+NdBBM8wIWqbzd
	 8ZFS537FbTUq1g225yuvQG0A2TS5oBNOV474chXwND1L6tkf4H6QpOftrr1PRQQhZ0
	 5tiV2pzc0SNHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 77D4EC3A5A7
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 09:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167049005446.28538.11437263782364158473.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4914a21ab1bc8612834c59879ed640d694d844c46f3dc101e08cf0c555ca763a
Date: Thu, 08 Dec 2022 09:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670490054
