Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E55298C09
	for <ddprobe@lists.linux.dev>; Mon,  9 Jan 2023 19:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 91ADAC433D2
	for <ddprobe@lists.linux.dev>; Mon,  9 Jan 2023 19:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673293287;
	bh=5LspMAzzxcG4R0J/Ao/BsNrEFSoi/HHUGR1F0fVSfDI=;
	h=To:Subject:From:Date:From;
	b=AHMeroQQOqiSN8xv/7IJR5KriTpV5snZhZy5Dd72Z6NgtwWdRmiI+ZmP06DY2VEed
	 8Gy/fgdB8pcIDaT/D/icJYVolRQRu2xryUVdXbRgjG1VGm8SA0ujeAiPo6jDUNdhTX
	 mFvK9YtnUi9oc5maxblRHtkSWti7YmnYgrAI6Iv7W5RgciGKTtb9Kljur47ePhA9K0
	 UF2FIrvP2iEN1tON3zDTY2NMkw8pt9QqN3ehHIk5gKrPKYPgf38zVxt0/R+cdY13NW
	 0qCTYeCloKYQNNCeedO7W/C453116vK/isBxFEFVLpNimM/sN3qMtEUcoWItzQA7kR
	 bQjipNOqs7Z/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 713FAC5479D
	for <ddprobe@lists.linux.dev>; Mon,  9 Jan 2023 19:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167329328745.7168.17673307894700992807.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 962732bbe4af765aa588e029ae2b47a6b315505de6736e3b0089d5a5f2ae7810
Date: Mon, 09 Jan 2023 19:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673293287
