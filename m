Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB2482C9D
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 11:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8225DC433EF
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 11:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670931087;
	bh=70JTGVh5Vtym4phhUriOpepM/nt8hQhugRj0dOO9TQ8=;
	h=To:Subject:From:Date:From;
	b=UNZ0fQ/XoFW4w1sE/kRLnv71WQzvsqEJXrLh4En58jhhUFJqE+eAbPlfogROV2yPZ
	 4me91JvRqMpOvhR5H4LIqOc57z/OvEMhojxAcfn1eSXPPXSmxcjro7yaVH+lufmhVB
	 pKh2XrK4/d8027o8Oo20x61O6KPCnoItRpllFt+04abfcbevgcGN3fAyOElMmKHXOc
	 m9VEF6pMrSBH/46kozGcFE3ddxGFKaMOqbD8mYzQTTOnG4P/tmHkEmPWZhXuMjoZX3
	 wEOvXtOuIHag6VlMugfsY5nOpQdZoPKD5vpLH0XzW2Vnou0cbtc0OrhCuj9pzf6grG
	 MBhvjaOLe5M6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64440C4332F
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 11:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167093108740.9086.11930809575976355139.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cce228307e5871badf41cb53c9f5f561033d96ad22d525b5e1b681af68fef848
Date: Tue, 13 Dec 2022 11:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670931087
