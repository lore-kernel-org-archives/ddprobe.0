Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65A68AD3C
	for <ddprobe@lists.linux.dev>; Mon, 12 Jun 2023 11:33:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD7CCC433D2
	for <ddprobe@lists.linux.dev>; Mon, 12 Jun 2023 11:33:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686569585;
	bh=y8pUhFETgxfo3FH5LK8URo7rMWK+ofeNz+27BfhNYzY=;
	h=To:Subject:From:Date:From;
	b=MsdSk6gY51zsODD39pz026Kl2WVMoAq8GvbZMZutDp+JQcoD61gGlgcxpN8QI6fLm
	 GjtlLAacUmgZxrIbCT5DPYhIi7F87smx/qfsI5Xt8weCUXm0blYHj0SLugq197hHSs
	 J1J3B3ipnybfx8TFe3aoGNuxFzJmBGHiW2li73PIDmNESs5dHUG4AeDOdQDiMtzflP
	 aRG1o5kUpCJRYPGK5HTj8cXO6Yu/JvK40XsJs64T3UjWKxdX8gOl20Daz4e9HHXBJK
	 2DwyHNbq/UHnuzkWT/YicI8UDrFiASQV3ELaunTs9py0EftnBuSHn6FuKmKFBDFUaF
	 8xAubZLgTTuTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF20CC83005
	for <ddprobe@lists.linux.dev>; Mon, 12 Jun 2023 11:33:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168656958577.7682.11073557601895671484.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b78e432acdf8ead800bf2c523b0ef0d1bc9ce85e4ff6538c89d317d4b503d8ad
Date: Mon, 12 Jun 2023 11:33:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686569585
