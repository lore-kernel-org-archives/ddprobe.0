Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2279117CB
	for <ddprobe@lists.linux.dev>; Sat,  4 Nov 2023 01:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tAb/U72D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 840C6C433C7
	for <ddprobe@lists.linux.dev>; Sat,  4 Nov 2023 01:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699062496;
	bh=YphWm30y/ft7h4MWdursTNVSprahJS7G3issv8sPbsE=;
	h=To:Subject:From:Date:From;
	b=tAb/U72D6f5IZedZKFUBKkOADexPM/NeqCOHp5es1CfD3iaXVFvBiXUGX6OyxIIAf
	 jb3R78W9548EWthWYRBP3X5ojhkGCEYAj6SENBhDLV1s0rf4nPAB9DE/1/0oX2n1wW
	 yt9uFYtyQExV/H+7NWAq40+wjYA9NrWfAI09TzE3w1W26Js5TKiqbMGZCXFf8pPBSD
	 SaXiyY0vbF/JK5/K0YoPUoVXlwZOjNkwD1gP/UUZykCw4v/8TO7zKoY5peVJFLtvRy
	 sbPVfs57rnVBaWldNpUQ/SwsirYed+bB6HtQN9bLalzuxd3e4vWdcXDR88sYGTgANr
	 6+Wt7hs6aFCdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63EF2C4332F
	for <ddprobe@lists.linux.dev>; Sat,  4 Nov 2023 01:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169906249638.28926.9797609904444763958.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eabbd7c75efc015ae65d5a5d5f6069a5f939c66c9d3126663e03357a052d9c6c
Date: Sat, 04 Nov 2023 01:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699062496
