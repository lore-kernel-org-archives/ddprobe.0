Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 82C5E7F
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 02:17:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 17DA3C433C7
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 02:17:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688696229;
	bh=Dp5iImaOPY5sfR4NCGfpUrOPA6qUWyjFqQhqOnJD3bE=;
	h=To:Subject:From:Date:From;
	b=IpBLa10MsTS6yGOMpHCUPkiu61QP2CvSrOh4FqpIbzXdfd9st1gSVekAjcrILUukB
	 gY1RBOsCTgpGQfa0x48fUXG9UjYKe8hMeV/dS8EqF7clfbcQvCGUvDsat+DFKS7SLv
	 KhGHz3tg7zlkHnYInwpKuZvtg6iXJ1AR0J9CAQFL+S45AAHJ4YCTubOx9tqo74qCB/
	 LduZNy5wPC1/2MLFiU3hwNiBbXYe6uYPJ/Ux3snrOtH2tXKIuwvt4defHxTukEUgeR
	 jjp+NRNR4k2t4bEibaq1aG9HH+umyKKxt8ZjnhQAXPPYyYH9LGVXHR3o0fLYfuxZoz
	 9+3q2krqOQuHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E1131C001B0
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 02:17:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168869622890.19334.8799292269334154516.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 077bc5789da00f5002796d36eec3c0c6d892227d48bac17d8031bdde22142936
Date: Fri, 07 Jul 2023 02:17:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688696228
