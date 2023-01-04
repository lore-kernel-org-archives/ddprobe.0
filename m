Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4865AD38
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 15:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7572BC433D2
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 15:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672845087;
	bh=VidA0vFYmQEvDpioE57bFp2sqZXu3YTEvo80xgN/eNU=;
	h=To:Subject:From:Date:From;
	b=rezpsk+G0uFej6crYU5YcR8vV4+nPKpwBl8c3UTc7IN8Vsb4siUmBZLyo5volMaRp
	 4TOlBN+2aHaa2fMv9zzBsHBUClVmr+zQ7jthvZQ+VOyajv14qkPRIlzK7RKEY8ZNL2
	 cWCmmsbmVivaeOFj/DT7MB6zoh1YALV3h83jr6hR2IUvEjSR4kt6KJJQ0hAENCOAMn
	 arNu424dwkKYq2jai/dS3Qn0pKbp/nGHA48MJlVnYWBbgCcmfpv3+TnOadukR3/3K/
	 utFONaN3WZ65cFVmJV026R2sNWqW2cPHh84YG5k7RMiujyCtdUsvDs0KklmqCcnRYQ
	 W4d+ILWrQCtuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E6C4C4332F
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 15:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167284508737.5411.12097403009959401564.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8ed50fd33dbfd6f5b5120c4bb63fe5b4c4460a74b4b73af6838420297aaac3d
Date: Wed, 04 Jan 2023 15:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672845087
