Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B9367E
	for <ddprobe@lists.linux.dev>; Wed,  2 Aug 2023 01:02:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0543C433C7
	for <ddprobe@lists.linux.dev>; Wed,  2 Aug 2023 01:02:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690938128;
	bh=WuPhX/qw1J6+nIGul16V2va9YbBy9p10gM1FR2ITphA=;
	h=To:Subject:From:Date:From;
	b=LaJoY+cOZUsCeZDBJGvusKy3HrFPsJd3/kh2xcUOiIWAJyP1oWLoxWCsJDEhDG/1q
	 jHmDsVL37AWgBrwt48HmcqePJ0F0OwrRD8N2SKKsRnKbsbgNC8+4SF/6WJO4j9O956
	 +9j6FReKYikzjEDS8Fbd/kVI9oo78nDpVTsDLIw6ClcOSc6UkMOlfpPvCn4SBKMHn3
	 T2svNouyoxy3JKbW2bvWAMPC0+f4VLwJkFJSTQF8HnJqAd3kE2/kE8XHX0lXF/98IJ
	 I6PGab3+9+h+RNAK0VgZ9txpnV7jNQrwpIlG/ZW0PGQTLkE3z1CCMWClLCHZF0eGgt
	 ktcEOj0OcReKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5D06C001E0
	for <ddprobe@lists.linux.dev>; Wed,  2 Aug 2023 01:02:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169093812873.12658.2081858160926858521.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 586067be41fb84d3cebe2d670e128493f24a412a6eee69917a4e51ac2ca9b910
Date: Wed, 02 Aug 2023 01:02:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690938128
