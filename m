Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F26821C03
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 12:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82059C433EF
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 12:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670760687;
	bh=uqbR5GBA0RW4gD+5yOQtdk+MOGyZgbHsZrmseRdzASY=;
	h=To:Subject:From:Date:From;
	b=ByEejFABmUqb9ayFbHG9qrXFstfCZavRnQsOLwZM14wkCsb8iX6w66OFmVi6+tDoC
	 LCdfVkN4bf4F5ouSB/XiI9pxaBfDcUK3Ba7MNwkS/B4+ha5mv2mU2kz84azDKxBZIx
	 QSjYkn0coDqrT47sOclmLpSHHGycyIAy2K8lyQjjL8gfc+QwsHODX/KDLs0n4aAYeG
	 BE/SoNOeQQpypc2cnDPTJ7GaRvez5dNTH337cVhmpyX1EA+V6V2QxMgtu0s6yfjsY5
	 gS+4xdyjxPX9DtfhU3LpDk9Rb6czsdmvAsdnd1TUx25imPu1wHdqFZoUVxtw0NGeze
	 x5cTdiR5PWN5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 676D8C4332F
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 12:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167076068740.29542.3876439064573705376.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4761e104a8bcab179fb3486aa432dad3bdf686868676a2957a84964fbad25222
Date: Sun, 11 Dec 2022 12:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670760687
