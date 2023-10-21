Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29D2A182
	for <ddprobe@lists.linux.dev>; Sat, 21 Oct 2023 02:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aYNQ+3fh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 98BB0C433C7
	for <ddprobe@lists.linux.dev>; Sat, 21 Oct 2023 02:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697857096;
	bh=v0e/rXAZWtguvzahUZ9wHsXoAZ1Q2Jk1uzU8NGZbje0=;
	h=To:Subject:From:Date:From;
	b=aYNQ+3fhxEYOm2npc5NbtAtyiimixKFbcU3CjgMawcTHmoT2YMa85/oscewd81Sv4
	 Jq7lGYeVpEsNfHm9FMtZ9nlahVkUPUJrcnMoKrKRxbbPCL9CX1zvq8qaX7tgFK9oo4
	 PbmgHss+hfAHieYR53Y+BuWuxATsSl51eslVycwEkOatdIothxtaqw295KoPKNyYGz
	 liNxYnbYbMNlsbY8rtYgCb3+psOaxS1cFrVnnzPOMwNyN8VMZ17l1Cf3KtXvZ0IWre
	 oITwEg7GFCJPWwEBvAUTiK+VdaM7wCcOZbazXm9GWgIyFqmlDI2+EGEJhj7lKFNkmD
	 SrQcyV8DcgAlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 71BB5CDB474
	for <ddprobe@lists.linux.dev>; Sat, 21 Oct 2023 02:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169785709639.28288.8993338629580399954.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5bb73c615d898bc952a13d87b574d6c5f4b2fa6fee842a8b54497f04a2760921
Date: Sat, 21 Oct 2023 02:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697857096
