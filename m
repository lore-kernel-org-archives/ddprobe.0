Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8DE717C
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 12:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 65F5BC433D6
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 12:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670244654;
	bh=/tmKXDHiquaws83QFJaBQ+MsyX7uV1eypxKUzzi+Vp4=;
	h=To:Subject:From:Date:From;
	b=EHfVQBHM09SIZDEwEEyHjagKovnNRSPge2eDELfieQ8IS1mJz1G9R7GtCgfscpTH1
	 hGb/MNS02oAUMfUtwrRIHSqensPGVpooHM9ZakX2jR2Idx08xqE+2Ns8WskN2MGFUc
	 8NF8cEqi6ECwCA50BTPFNX6pdePF9hnjv5n2t/h66g0xZ2m3ZKsqEB6FzZHe175UiU
	 YRA4yldejzrCPaUCklfSyk0fJvZurhWh7cyMtYPxp1LdK7nleVvDoPo89dLZ0gb/ab
	 GQF0dPI+8JWiO6AMA7mM0fdOL5hJaQSaS7HJxRY29Z33BfSU0CMMCVdpyem8Mu2Jgv
	 Woe9fJl71fYPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4FA5AC4708D
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 12:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167024465432.31054.4368335986334986593.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9544f4508bcd26507c877c99e565bc53f53dd3c232d73917f24d2f4b1aa3ec17
Date: Mon, 05 Dec 2022 12:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670244654
