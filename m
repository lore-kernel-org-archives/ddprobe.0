Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D174E8808
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 14:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 88E53C433EF
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 14:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673619087;
	bh=XM4HXyknX6SVKAu3jPOOB5xRzYpYrhqMvbycNO35lnk=;
	h=To:Subject:From:Date:From;
	b=g4K3gNHBPwee3aI+5ntz+mnr4Hm50QC8eFMuMzamLF94WoxCLWPAwU99GtRYeX/ck
	 WDBZUm1BmXUKE/nCGQ54ecksOfa7RtLULJgns6uNPdljLa1SYZSO/8on9lqxKEQmRL
	 HXLFY04BajEQuaTQyMuHliaXuik6jFhTsuwDsfX/UAJxl+vRvRE8CdOUg+f/dr+5Sd
	 pemRVEu00cm4RjPqdjUNfUWcQjlNzJSHpfcm2Vlohal/a60RE3UkwK4Q2lAk5LIN4i
	 J7zTGhc8E+salwAgJlQQ10ToKvumwR6QxAQc5bOEetXEXSbSwui0urBpcxvxR3abWF
	 VWrPKJ2pgZxhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6D8BAC54EBE
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 14:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167361908744.11001.5058405929114162237.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16d5304dedd385255ad16a14d0615fc9059edf9bd03d144f4c8edb9157765c90
Date: Fri, 13 Jan 2023 14:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673619087
