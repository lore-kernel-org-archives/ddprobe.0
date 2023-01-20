Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02DD6194
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 05:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 98385C433EF
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 05:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674190887;
	bh=PAfkCoEncxTIkidzkM5FpGyylUFa14Y1QYDpZ8Uqotc=;
	h=To:Subject:From:Date:From;
	b=nICodzqIGpRI7pZgZjSBthFQ2UpVo13BnZ9Lh0L6QF7V4InF3ZH2bONc+GqUzENr4
	 sqcNR0R+zAUHSmM3o91+Qn/BQQVVF+uzq64/fB0alvOh8/+CWGQcxy5c7rDHHNltdV
	 pGLwcfsvvsSXThIQHEaqRd5VNBHkLAtpZoe0XRFjhswsbkbI5rzcimncJjYq/g8oPG
	 VpEGmTxRmlN+Dkfo6omDxPN5rChDm4wzOb8Jso7IRtRKEo0BdhTslLOSW0XAweju5X
	 0mGYcCx/7pOFuTheMY01BwHQrIMXa278b10ue7G+ae2eBgqFpD5RUkRaZ8Me5OGZw2
	 DgTLd/FdveBUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 792FDC46467
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 05:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167419088748.21632.1223462123476145375.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1d5c8eaaab1934c007ec7e6c30b6ac38c30b673f0601908a85d4ef2f173f4cd
Date: Fri, 20 Jan 2023 05:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674190887
