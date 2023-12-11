Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE6F621A0B
	for <ddprobe@lists.linux.dev>; Mon, 11 Dec 2023 09:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nvy8hJLV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76BCDC433C7
	for <ddprobe@lists.linux.dev>; Mon, 11 Dec 2023 09:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702285696;
	bh=1MI1hp5Mn1uTMKb6JegFNCIoWIK7bJdeUOAyZpzmJBk=;
	h=To:Subject:From:Date:From;
	b=nvy8hJLVq4gIOUewrBQ0i/Dao4EEJ3eeevA/0Egh6DPNmxydJKLrOKTsSYAo4K3NY
	 EzRAkQ2uNCPR+X+E9LKaBlcfPFbrAU/a8b8BebMkVeRpkVbswgsCzExd8quyKfVNbo
	 Yy+3B6muizz7X2Yq3x/NkM/elGL0B8ldoW/c03Aso1ONQlouAeDW7JBTyBTsh/PSCT
	 SsUmZFxFjVbZwYevYFu+/ELagSzV6RulWpJgF8+LbYWJfAlZ2P2GcumDDKgBjJAmq0
	 MdJHTzUjFh7o4UdCtC55VLSwhJ4BxJqukkQOtLRleT7PoDCw3rRPFxftwCPSuusOmw
	 l7CpxsSeGpMPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D14AC4167B
	for <ddprobe@lists.linux.dev>; Mon, 11 Dec 2023 09:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170228569637.13336.8621724982158683268.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73f9ec57f1a4d56496e186bb271e0baba7eedd645a8c6a43037096aa8e5c8cbd
Date: Mon, 11 Dec 2023 09:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702285696
