Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA3DA19B
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 09:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77749C433D6
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 09:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669540854;
	bh=x/MSQA5tUx35gFZMxodOlW58Q6Tb9Le01cRbBtWo6ig=;
	h=To:Subject:From:Date:From;
	b=Ia24r/xopUDspINRbJY1Y+kUXeg9b9kTh3lOj89SV3GqOOZxsjhDI7wPA0au1Ffoc
	 l2711NFlSmccidXZ7DRMuYPeGfziUJx7ATz9T0V7lp0Nw5eTQckMh4zjShBGXUPzzo
	 DGIyfOrtssCoGacdaFPKZoH5W1mVXODr/gsAyqXo75N2ejSvbrrbP7W0nCENZJ4o5J
	 FSuOcCX7wbSlspvmgwkdLLO1yQx1lUG3r+HlLWBnUPgty/dLWLL4Lwt0d5I45TLerl
	 xUYG+RDEGSDvmcDugZrKyqiGY58iykKm56Wb0AoZWZ+XQNaLtbva3oBJLCzRQEhiTD
	 Isb2SlFDc9t4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B83BC4321E
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 09:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166954085433.10336.2268500757427514017.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3ca767b4d0007de23dc57ab6f42f398675b5e44bb11ad64bc391fb2027bd59b
Date: Sun, 27 Nov 2022 09:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669540854
