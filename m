Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D34B97E4
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 05:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 774FDC433C1
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 05:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665897053;
	bh=trp+D4zNme0ov3Wqm7OXGQfWfWDqthmjnHqSFwnMPK0=;
	h=To:Subject:From:Date:From;
	b=KLdzKibLVyCSG6ry0sOUkndWJZ4OxJxrE271MPIemn9AEyRA1UH/kgH9vl+n08hOF
	 R7N1ItPb5DIZJ5RK5eeAbKaYv/P9/veNaLH7jhXCE5bG9hs3R0fTJ2nnzbqaesCgIO
	 nOCI5DEDU4E0LUPlmI07yErG5+T6llNhDAz+uUVAPIzuvJ4n/ftcbAnKlt7b9ehODU
	 eh0Rm6eGHuVHicm7vNLlcuW56hAlybkWYvaytxkV/d7ViaG+FBPwr2eg/Ilz701khk
	 V29YLDLqtS+j7RG0C/Zi9NGALxjsAhZc/ztRbtQJHSSDZv2ZwqqdAFBWuK+ZG/Q51Z
	 xftutl+Zp5cdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55834C433FE
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 05:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166589705334.3810.13692186440905916791.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f9be6868a015341fffa84d0df3d622783f3d051701027bad5ce7f99b09c2072
Date: Sun, 16 Oct 2022 05:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665897053
