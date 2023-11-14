Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 253D84696
	for <ddprobe@lists.linux.dev>; Tue, 14 Nov 2023 00:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F2Flyam7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9929AC433C7
	for <ddprobe@lists.linux.dev>; Tue, 14 Nov 2023 00:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699922896;
	bh=wddt6mzCNlKFbRdVTS66vo79ux1psYtHfEngzLyT/S4=;
	h=To:Subject:From:Date:From;
	b=F2Flyam7SVkbF65/eFG62amq/5yR3WLwn5uAN1rYlozq1plQQrBemtPl6ULvhfVao
	 /Pbdmf6CCjNHcpDWUw9ZoT2mBI5oitRwP91Lu4m7jHrlp4Eww8Obv4f0jzkFsje1WC
	 DBRwjCI4+6nR79+l8K5vuEUA7YUac59A6bwwj+tqoO4ar791X6a2Jb7cYEJHO/NYRF
	 /yKX9S80YfOKpJamxiW04Dqrv2iAJ1wx1upZYQKW70uYt0Ar+OK5Kxn/EJCM+6dIX8
	 bWnqLBbzQWTuiJFL6TBJhDbTOCJXelaTsOdZ1eJDMuPeTjIFZUCO9L+TLE0zl8uF4L
	 y6rxg1ezG5ftA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 77C4FC4332F
	for <ddprobe@lists.linux.dev>; Tue, 14 Nov 2023 00:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169992289648.4640.10354657081111254268.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 728edf407f6ee7a5670dfe36acf337cdc7a6131bd0cdfb3fc1824380fe52f3fb
Date: Tue, 14 Nov 2023 00:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699922896
