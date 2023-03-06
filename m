Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D92817E
	for <ddprobe@lists.linux.dev>; Mon,  6 Mar 2023 06:37:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E8CCCC433EF
	for <ddprobe@lists.linux.dev>; Mon,  6 Mar 2023 06:37:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678084625;
	bh=wxp9oBWjvtzH4IIDKDSNgcts7czd1nZ70Gs7ubmex2k=;
	h=To:Subject:From:Date:From;
	b=L2B82An0haO9y0lLyRXYsg7EUVt5yqtAF+oOlVvCR8d3fhacSuPuSCsXZqgQCVePS
	 m7cOBw44iYeVzdqSJv+Jx2iucWkL4Yyjs3XRqADiXOBKOPVYEQbDEe4rWLDVOSXCHu
	 DJV76RvESZHEgQ3Rf7A0Unp1MVodj/Q75IWZc+xuo3XnmQdMBvl4b7gubmL6g5GP4h
	 LjXL9q5WMb+MucVssQDLSX6h2JM7kEsadHnDkf/utY3a5qEoNIRGgKJ42tGBzUCOPU
	 lO7clV6gZ2btYhgI2lTEFMahg0jyYFpfpUr8FNJl0L7iBkKj0E5m7bg50kgEahUq3G
	 135TRw9JdQmmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9BE7C678D4
	for <ddprobe@lists.linux.dev>; Mon,  6 Mar 2023 06:37:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167808462581.31707.12679827383609092940.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3b1ff58c82df8f521e1bdce3c190fcd8e2dcf620b38618e20b1b10090fbfd8c
Date: Mon, 06 Mar 2023 06:37:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678084625
