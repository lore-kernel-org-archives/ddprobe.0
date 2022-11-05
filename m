Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0365B185B
	for <ddprobe@lists.linux.dev>; Sat,  5 Nov 2022 10:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 87C8DC433C1
	for <ddprobe@lists.linux.dev>; Sat,  5 Nov 2022 10:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667644854;
	bh=AlTnnoJnMYyLm+YM8FPnaVSL7LFpZVTpMOuzgeIhBXo=;
	h=To:Subject:From:Date:From;
	b=BkiOuakaSmyl+c/n2fYH4Lk33ao+CkIyrG7JvLD7WwAlCpXyz15+foCD/oqoe7z1Y
	 Yf34hm5XFHOs7xEOiA1Vt8wHpdtkyR8d8OVxvqRicJ5yESCM9Ntmr+rxZAzxSsv3Tl
	 YN5OQXC6ZESvk3IHHXCJoaNpkQX2bxJ+JWjTDsr4uIwaewRpR4hF2lryOuzd9FcJXP
	 Rwj1DL9v3twkC82lCd7Km0Ocer1bSwbJPwsGNPbU1QdFNxEynLejXOr3QKdM8kvrh0
	 3qRUmOnUzzsrJ2OGpVqS85AX5RM0WPh7ComI5YT98J5nL2ld5rufT+c2Bhk+k2ewBu
	 GANpf42RXLKLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67ECAC4332F
	for <ddprobe@lists.linux.dev>; Sat,  5 Nov 2022 10:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166764485439.29864.8844793004191255505.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d9030257954867c18a04a0cb707f84d49d922cc065c5598a80b421e2210491f
Date: Sat, 05 Nov 2022 10:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667644854
