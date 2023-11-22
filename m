Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28AD3C2C2
	for <ddprobe@lists.linux.dev>; Wed, 22 Nov 2023 04:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CPp3cRsO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7ECCDC433C7
	for <ddprobe@lists.linux.dev>; Wed, 22 Nov 2023 04:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700629096;
	bh=ALXBehu+fyqd/U0OyMUAUIyIc2gakauz8PIpxVRMpm8=;
	h=To:Subject:From:Date:From;
	b=CPp3cRsOB1qaY48I3CRbIBGrX3yobV4Bx69fX95f6VENhBeuJ/9NK0I5h7qfXy15w
	 Bv1O4qV7VfMn3sZ+VeAC2eaRBbUP7ZXR1lvYbkcLSm9wqEq4Qihk2YScK9wGT//3zS
	 dfZ369/HZkl97VuPw9kXjBidBtkbkMOG/+iXbwW8gNRhUGBeGBqXYZcrCCitBzmV4V
	 u6T6SxsykFTTYWdMIjrFdyx2QukUOUgdyRNtx6RdEPduh/RZyXeU+S+tmknS8L/Ild
	 HdO6Kq+l86Wg7wOR1W3ZD51TimjRZ82QHBuIncHlOlAEYmQguobtAqJDmJrqoKEo9c
	 b9nasvmy9xgQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65C4CC61D92
	for <ddprobe@lists.linux.dev>; Wed, 22 Nov 2023 04:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170062909639.27469.7214262945709656361.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3de8a2bc25128bd140475c84af24e3f7938d7d6c5789cf683ff986775c1fb14
Date: Wed, 22 Nov 2023 04:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700629096
