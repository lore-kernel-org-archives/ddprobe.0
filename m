Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E658D7C
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 00:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 862DBC433D2
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 00:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673655087;
	bh=WgaQCOSVGO5YjZxOB4I/Fh0ksASaocfE5QUI7r7krLM=;
	h=To:Subject:From:Date:From;
	b=NWuF+0/xuNp9KTw7Okwk5NHcLIoD77Gw/AAnKhvzWWzAi2GsqM8SVkxiXmxX46Y49
	 6N//xqYtUAIwTa4+Q0b86AOOccsCK+b9Gz8EhARYEURYpyzZKYoDBkGrOpH2Zbd9gp
	 5+RXid5FJDP9Rp3MRuSx2MzEb2ifOBSXTXHLQd6e0zOHjv6pMahsC1nu38DNyEg3UP
	 UihV42f4H6MBbm5Xii5S4NYNGlvn6UFxsPLevgMhSfHEiWvJ0TAmrp/Y9hGtO2sKjx
	 52s9LR9TNP40aL08nAbs+kUWOZ17jD6sjd5DcwC7dkoW+B4E2ZuyhCi6cKahonXqV9
	 JzAaaS1VbXYxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 696FCC54EBE
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 00:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167365508742.24110.9240983096419645484.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b745badfa043e5188464cdfeda579b90c0b86d4c2ae759065021248305712e1
Date: Sat, 14 Jan 2023 00:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673655087
