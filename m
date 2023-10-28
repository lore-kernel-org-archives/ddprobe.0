Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E313FC1D
	for <ddprobe@lists.linux.dev>; Sat, 28 Oct 2023 15:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g/ywURAy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81CE6C433C8
	for <ddprobe@lists.linux.dev>; Sat, 28 Oct 2023 15:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698507496;
	bh=EucaaLViV4LIaAjMfF8DaUXSbYx5RqrmXy9UTmfjUfA=;
	h=To:Subject:From:Date:From;
	b=g/ywURAyjsGrJUuHqAlWxwaNsNonAgrmpUgWw6/V2gD7+ha9CFQvMAf492pwdJdBh
	 7wn3HVbmjVgfYBRMcHfG2YtJQ9ORKCgD1L7TJ+FggFgDLITfe/1874YwiQCasPdJcN
	 JfNYNqYUFO+HeEzhTRkm2Oikr0o7XkEWECISpYvAfZq/0hT8Zfr3c1riU96xK9/FEj
	 iXRaGxe87EOYgvJXYFSssr0UVsk7tGLndo60ME8XYMeQ0NTSluAZMAhcauG+tXCEcA
	 F051VHFJesq7j6rMDWV94xnc4xs/zXfENTGNl1Lrjeskca84iOJh9zetggcJ1Li+75
	 dTIhfBjRLlHQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 626BDC0032E
	for <ddprobe@lists.linux.dev>; Sat, 28 Oct 2023 15:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169850749638.7256.5161686601026385579.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1dea8169174279621c7b62c45c6e0d1dd34013911a2c960d645f4128ae8cb8c
Date: Sat, 28 Oct 2023 15:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698507496
