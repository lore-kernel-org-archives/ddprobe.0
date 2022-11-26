Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE1072F3B
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 20:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78CCFC433C1
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 20:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669493454;
	bh=3sCuxijPEau6rLjuiRU7U6Yk6snFVVeYvMqX612B6Us=;
	h=To:Subject:From:Date:From;
	b=krLvWAj9S7L8m0HMGUJ/zLpshsNA1lhqLDBlVlDWlEAc09CAdJtJv6yfCcjHeWUOK
	 t87JjMCBzkiqq5e7qkfHgV51T2MhiSzKq73swBiMeHgqm7ueyASBub8MbhIAFyMAwO
	 vKbL5T96PGwv/3IsIZT+SbJyjUGZy2cyg5FUz3lgYi3XZ5w5dNSy8BXsGk2Haz6Ejd
	 Hdi4FgYexeDvYimrw9m+hGxM3OaMdFWRJ2BpkMsUI0i+no3p2MRBkxlfSN9zQP3vmx
	 /nEw4vz5Kcs+VzACRJtt+5Jd+5mIgSyLu8or2PxK1CSTIAPDlzaIvBs9KakKBv2TWR
	 zf5U8C3Q1K/eA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57141C43217
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 20:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166949345434.13536.3443191521987026602.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62f270489df0ca4bfa18acaaad216daf0a2ceb95849e50cf6386fec0f693b8b1
Date: Sat, 26 Nov 2022 20:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669493454
