Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 764DEA5B
	for <ddprobe@lists.linux.dev>; Mon,  9 Oct 2023 01:07:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i167nl4Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCA55C433C7
	for <ddprobe@lists.linux.dev>; Mon,  9 Oct 2023 01:07:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696813628;
	bh=CiorWQMXTOxSP3BAw6hhzvsvvLVn/SyVZAKpL4bsDwE=;
	h=To:Subject:From:Date:From;
	b=i167nl4YBhGFandCmNU6EDQJeEHofqvQRQ2TP6XOhqt8mjyoCtuWlnACbrnlZZ0tx
	 mRT9AEriyNnyLdluLAG4ovvQZ7cw++0I82c2tRrmveNYgLxjW9g0E9cMZbSczopHJ9
	 ATijIlH4z4u7RyJA1JUI7LcnznyJ3Ol/G6cWLCloRg5GSDNtSqD0ir/+acqawhgkrH
	 1WroMaKDcz8zkEHjFzWMCxiIR6zbrcGbwL7Tk/d7oMxvwewL3tn4ebVLBBlxa8NCkA
	 GpRHhkm5DX+y0ZLsIoADe8IFXocMWoTwz8N0zK3beDTX3ar+EY0UgzuTzwRAwtz0DS
	 lh59usaT1eYWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC95BE95A8E
	for <ddprobe@lists.linux.dev>; Mon,  9 Oct 2023 01:07:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169681362874.4822.12987007712195450643.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84dfac36fe329d0d17593b8b1c5f336a456184faa0f9e298ae8044deca1f020a
Date: Mon, 09 Oct 2023 01:07:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696813628
