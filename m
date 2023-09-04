Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6621AC14B
	for <ddprobe@lists.linux.dev>; Mon,  4 Sep 2023 20:04:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2918C433C7
	for <ddprobe@lists.linux.dev>; Mon,  4 Sep 2023 20:04:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693857848;
	bh=n8a80kdlwcWGXO8rhMhpQDTYrs1uoYkysMIRk8QcF0w=;
	h=To:Subject:From:Date:From;
	b=ODaGtN4OKnVDWmTS1TztLMAnshyzr1EBXPoFRCxI/GPfMKfJAZwc4pQCYdw4uSzqD
	 MHaqRpGXBOT28t7ERFBu5YcChuO1+nrHqufV68fFZXoMe/ZB/HXKT3aClNc+RG/upN
	 E8/4Nasd9f2kepmLjzknYlteREOoBPa8pKuesjhkji/eEpoTbnQyv+rDPz0A2TmiOL
	 mu7+tzIr2pbsV1KY+aMcZq5L1O1tv6tcNealkCztOO+uLKi+4rGojBkw1ga//G+4LL
	 jH/CcX57RO5uKrgnpNPoqZYVLyWDxweqSmqJGN4je/MZCP+KJoTRukKrrPvN3kHhfx
	 KOmPNagHBGlHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B67D7C71153
	for <ddprobe@lists.linux.dev>; Mon,  4 Sep 2023 20:04:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169385784872.10140.3318297726525506936.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c88d38dac1da8cbf7b89e73197c9b76b86a7c841eba25f32bf98ca440566c5b
Date: Mon, 04 Sep 2023 20:04:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693857848
