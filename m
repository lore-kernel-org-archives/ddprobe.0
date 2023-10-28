Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1680C631
	for <ddprobe@lists.linux.dev>; Sat, 28 Oct 2023 01:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xrz5XkJ3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8DCBCC433C7
	for <ddprobe@lists.linux.dev>; Sat, 28 Oct 2023 01:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698455296;
	bh=af8+YZib2A/Kf+oZ3GHyBnLnsNmpZ96g99+tCnD2SZI=;
	h=To:Subject:From:Date:From;
	b=Xrz5XkJ3X9sDesCfqen+UUz6VFjUxaNwFA8BYEB86BJY+3MMiT/QttmRXYRIFL8Sk
	 kj/PSyujCsM9tFkRwSXSk2MTiVtrLEJUiPJOSmkNz+J8XXRh/cPv4F4STqlUVMAi5h
	 Dp38JBOrQAs9R3x3uWNOtcMAJnmPBF+36QOoIaqFeqhcUxkofIOvUDeybTNu5o6Z0f
	 kTKVo2Y/X9lwG1I4plFTsPO5RQsLYGA+gPSmHwBJV5YN+1D48eeyBuNHZNfO/C9Ibi
	 d7bblhcZDBh0TGLrQSBFmrnD/4QyYANPQAxRwXTQsEV/wUfR2bAf4teWEU4vAOyKc4
	 OcCm2aZ9zvV5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69124C27C47
	for <ddprobe@lists.linux.dev>; Sat, 28 Oct 2023 01:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169845529642.4032.4208212069414228429.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9aaba2ce81ffc5c736b44806695d96db52159c5be0071aeb91417ca815fc2683
Date: Sat, 28 Oct 2023 01:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698455296
