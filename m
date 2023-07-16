Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A682EA0
	for <ddprobe@lists.linux.dev>; Sun, 16 Jul 2023 17:11:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5020C433C7
	for <ddprobe@lists.linux.dev>; Sun, 16 Jul 2023 17:11:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689527468;
	bh=PKDeT1QTbzm1M0/C6qsIH1PHGodTK1uPCYZeRPTHVfM=;
	h=To:Subject:From:Date:From;
	b=utbdwSN5i5kRHj7iEchfjvUewCFMitJc/z0IVdd/GLHO6/16AKFrlfUob34Ajn3PX
	 Lk/XAiiLMBtdWc59hssJKFCqBlDXbE4SjFd+kf9bwx+ehtSq6ge6NUiZBwVL0Y0lGF
	 nkZBlLV9frSYSVIJRmmnVS/15RotR99uEokF7+HDLCoTAnWeWFU7jUIpFh8An5bBd4
	 aG2s4X0NS1rDVMS2fZY1+TAnGGpUcHmwpWEk1qGXp3rZd5pbcgovh9sHOebI2zs9y7
	 OY5dLAaExmaDzcA7P5Tz1sNaoUlSJnedXedFKMhUj7B67WmDXEShwvoVnP28KGEAw/
	 Hl0uHNHeVSHuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC29EEB64DD
	for <ddprobe@lists.linux.dev>; Sun, 16 Jul 2023 17:11:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168952746869.14516.6751441497077405387.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b091cd9d67d2fa5b433a0722f7d3c180fba9856d31e87cf378fb2bab6f11fc82
Date: Sun, 16 Jul 2023 17:11:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689527468
