Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFA3D107BA
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 23:51:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8E252C433EF
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 23:51:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672962689;
	bh=W3i0xOU9n/aEooAhjNSoG0xH4NryBA1KLuJLViIV3GA=;
	h=To:Subject:From:Date:From;
	b=WfplWo2ClfbvDyslUcNdf/DclpdOhq+NkcyVO3cq/o6XT6VNN4Kl14/nMtJrQcPdl
	 kUIX4p6VSPa2+HDrJ+g/jcsuI4/FVyJxrdu+/ccRLx8QifNzWfgPh1Sz1Q2riQ6lGH
	 /VJf9L+HM92ppsfMWQYfxlCm4CJsd7/RucRbqgsS0zR60YCSfpBotkw2//nBjT0IJq
	 UH06hbCX0iAUDL5SvD6lKSW8bHpcN1bVXzYnvbD/dNnYQNX+GPl059nNog3S5OMiCs
	 akksrQi4HuSHLfslYeDTSNnJcSjvXu4WBdU/Xwh27rXAFbHNIIEwHPdk/uYXsHzf5C
	 fT2dAYam+D9yg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6F727C3DA7A
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 23:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167296268744.26297.18005146250012214106.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 070ac4b1fabcfd73080f8a77816e060b0453a313d5934871d6b259a09e8c1d17
Date: Thu, 05 Jan 2023 23:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672962687
