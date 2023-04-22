Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F6E233CC
	for <ddprobe@lists.linux.dev>; Sat, 22 Apr 2023 15:51:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D962BC433EF
	for <ddprobe@lists.linux.dev>; Sat, 22 Apr 2023 15:51:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682178665;
	bh=jbT4Shbp8/r++0ClWKGjG9lRNrUKdaZsQCCJDFjNSa8=;
	h=To:Subject:From:Date:From;
	b=GlXTD8ywfefSj4u1IL+no4ZYxZjO4rGqNIwWFKOkWmk2NxCvv/5jbRtDfwihP4VoW
	 VR/wX1rifh0eyNdfCz17JRFRGKZTNbhk0lfve7beamiBzHpd39SjeGW5Rz474v6xiR
	 TOuyYnR84bfz/a8YDXAh4+N5khryLV84Ka2AbObHeaZnnk5e3TSZIcCt5VfYFMGW+p
	 p4obReMGOAvklWfUDqKhh5Xy8z2v7lfSjFLle9Ve/EHyWYqEQV6ruW47oUujy0vRMO
	 wdPBUTc381B/qe4rz2rYMkJSkN74LTWkf/xlTnn3du7z71doUK4ijAno7PXyO3orSM
	 IlfriGQOt4f8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCEDFC6FD18
	for <ddprobe@lists.linux.dev>; Sat, 22 Apr 2023 15:51:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168217866573.14948.2960497033388403676.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49ad331efd73ad02a20c25126a6c04fcbaf198fe826a99f50797b3cf2cd74276
Date: Sat, 22 Apr 2023 15:51:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682178665
