Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61F7B180
	for <ddprobe@lists.linux.dev>; Sat,  5 Aug 2023 06:33:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD6E4C433C7
	for <ddprobe@lists.linux.dev>; Sat,  5 Aug 2023 06:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691217188;
	bh=tLzs0bFvCvtcN/A3RiB0wtzlN7hvsTni1CgVxWC/r/Y=;
	h=To:Subject:From:Date:From;
	b=dkH/hu9BMAKaXIgtbpW0gn6Uz0o1cNFtn1yIhz/vOegHMtmtCM6hVLOsjmtQyE9Jq
	 2pOfsNSd+cPokqNhcHLFQJruSgs318nQ7bEUl5w9w0iHDsHHI68VeQCdzAlWBzSlT3
	 eDHkJ0nnvGHPAhUUp6o641SOX/fNMpKwgzbdB4sUv5TnwQuK448c9+60fXesUw4lch
	 g1wLCuGytXWvL0fxb4qNZNxSsHBphO5MsdRE19LapXkgRHpBFIXcCwJH2PHnZM+PYt
	 TrsnTxx5GJLA0kY4ZKGrpq0vCkAscwcprt4P+rEkbc9Cj01q2LggKqva3Ecp7V1cpr
	 6scqHwIvlg4Gg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADCEAEB64DD
	for <ddprobe@lists.linux.dev>; Sat,  5 Aug 2023 06:33:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169121718870.14991.10586198061949106626.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c9efdacc8eb2609e9e410ff23ecc130aee1dcd5bd4cd623d0daf52e4033e415
Date: Sat, 05 Aug 2023 06:33:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691217188
