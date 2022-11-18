Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA50420FD
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 06:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73C68C433D6
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 06:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668751854;
	bh=1RIt6AiTN4MHZjEOZW3iTY149ms/FpLq8sFbev+THDo=;
	h=To:Subject:From:Date:From;
	b=BgRdlru6WjqIRS4/rffENMPNjbc34vIXOh4lIFccpyoygktTWf+EOpxHg+0JNCRNm
	 RSKNi1alHQq1uS8140S+RJnM1xo6HohDRn/712Iou0JectoNecFXIvsEgUZgB5w9e3
	 h/AYApwOmSWxlU16jJG66xd1Uvfab1CWT66d+s4+g3DydyYAFV03YEV/IMvZviwUHU
	 eP+dOMjHy1zMIdxEMbqX/qOrbQBZJaqO5YmU60GIxwPX8rNakpyzKY++IXrJufhzL8
	 U8Mo+fuxhMs2ThXGWr4eVIO0nMb5zmNchZRAXaYGSTiG5drSstgpe7OpzNke/X9dMm
	 Bchccg4+nR0uQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A8B7C433FE
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 06:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166875185436.21775.5167606758430471648.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c169120aba0f76a1c028491680b2684ec592d81eb9e633b193ca274c70f8a146
Date: Fri, 18 Nov 2022 06:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668751854
