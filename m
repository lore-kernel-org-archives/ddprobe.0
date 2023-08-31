Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 784F620FC
	for <ddprobe@lists.linux.dev>; Thu, 31 Aug 2023 07:24:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4A0DC433C7
	for <ddprobe@lists.linux.dev>; Thu, 31 Aug 2023 07:24:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693466648;
	bh=DFsM5xHMgUrdYXJVvBRv2Tl9N3WaiZmMVTj4Ad+l0jE=;
	h=To:Subject:From:Date:From;
	b=kGBZoKtuZYrpRAE/v+775T7Qbhg5Q8cZghalgFtXGYmPwifz/Ziiwpmq8o0Gvy1aC
	 yPZjFSGsamxsdcqRqPuL9z3ksTGACQyLSIBrJzK/BhABTUrpSvAtpmTIe0pnkPPro0
	 3DssIrCiIsrlSUprUCWMhyItCBFr4Md1x6A2/WO8caULvJdw0RuGVCRark1FgxN8xO
	 rcwAC9zalVNSNtQ8tf4ZZuHIKrY0XnbRk6fpksZ0CKdVxp/Cn0OrIleVPwGO8h7G80
	 WhB/pIjdUge7fyLpK+/Xy+K+NCm8/el/+z7We68V9yQALleZV6B2MQbB7WxyXdki6F
	 84mZvZKN+6Uvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAE4FC83F2B
	for <ddprobe@lists.linux.dev>; Thu, 31 Aug 2023 07:24:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169346664874.10661.13639944281700609440.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8252f98d3a0bb8e6886991ca00b8d5126632d8cb549cea8f831ddd4e37063ef4
Date: Thu, 31 Aug 2023 07:24:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693466648
