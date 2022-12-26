Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC363634
	for <ddprobe@lists.linux.dev>; Mon, 26 Dec 2022 04:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81F34C433EF
	for <ddprobe@lists.linux.dev>; Mon, 26 Dec 2022 04:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672028487;
	bh=pxae2sNVv9buVniVAHRjvDagHMGAVqjvldetD00M2d0=;
	h=To:Subject:From:Date:From;
	b=bct0JzsBFvsgTLBsUcgxzi9LS5S87VunYV55cvsf/X+K+cmhovtWE5ez2JIXwHj+0
	 OjqQ0oggtGsd0GisNFCdPC4EJD+28tOMOs3vON0vMMfiX9QZ7lR7JpXDPzy6D1PH/J
	 02KYF5qJKEdVeBn024bPdxSNtMflEYfH4FD7LpPeUTQ/0jDC9uOwYqVLBhETxFyWR8
	 Zryc2GTNb4p3gXSUwr1yP/eDH+y75LcdQiNuk7PSdAyjOtZBOLXF4Yedy0gtjks83Y
	 3CU4FKt2sARK0k8EqQ+LZksvFBgfFyvW7zj3/ZA7Rt0fuKW/c+2G1JTLmosobOvrZV
	 rUFwnySsH9TUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67037C3DA79
	for <ddprobe@lists.linux.dev>; Mon, 26 Dec 2022 04:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167202848741.4073.8422185347107956915.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ead46a0ce2e184bb1badcd264c952fdfa82015b4dd3648912811262355b3acc5
Date: Mon, 26 Dec 2022 04:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672028487
