Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B370D4A24
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 11:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D543C433D6
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 11:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666093253;
	bh=1ciPIBvu+LnlczGU/v3fCjsenxKoExbaaN0GV4FDhgA=;
	h=To:Subject:From:Date:From;
	b=NeF/wLPsCCT7I56s6fzIXWD3Sd4P5skRUW7qDkkx1dd2LO/yk02Ntqc+DHxePqocZ
	 t2oMsPYLi+jPtCsi5OgEO+lCCrFOqCrmnW9gTM6KBpvpm9y0rTRn8hxstrVmnnG/5E
	 DmPn6BH8mCZ0ebSbbcXtbPLn0cd2YbhCJBTYX1S6cMISwkcgPcsx4pVmLM6pYpVJ4o
	 YAlCI45FLra/2j82+7TAbqQRj9BfqL5KmRODMnFEwvDoadxiVBfXx764DNrt1svnCa
	 kisN+YZ8/AyNXbYGPyZISehQaz/MFqS/j/NI4YcVBVsXNGX1Kzj1VbHF2X4Nl6qxqH
	 eRRio7/PIO7Vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51416C433FE
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 11:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166609325332.10735.15579981039594728408.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 222bfd49a95b83ab2da30e69fc6291121ce4d49ff9f0a3c1a30f39fe15e8c0bd
Date: Tue, 18 Oct 2022 11:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666093253
