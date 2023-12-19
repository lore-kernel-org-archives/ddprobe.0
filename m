Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFC5A12B6E
	for <ddprobe@lists.linux.dev>; Tue, 19 Dec 2023 06:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GZECLQGW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7963FC433C8
	for <ddprobe@lists.linux.dev>; Tue, 19 Dec 2023 06:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702967296;
	bh=HxL51w8cUI62fv83wGKk9ca4FrHjyROmb1p1uFWDoK4=;
	h=To:Subject:From:Date:From;
	b=GZECLQGWa7w0IBIyclgMmwIr+8P+PVvudejycZXUB8RNw8Hf4/710XlNdIleOyW8X
	 U+ijFieQU+Oi2yNwC3r0ovzmaanoveHBEEzN3s1LDsSFoLuSCfjGagbvbMf6BEkQqb
	 fDnOvWwNe291kekw7HLYFMgAEaZ6hJGXEcBehCWMkG/6wxc32QNsqSUZPSMfeo2sRO
	 H4ZNTke7cUXTy+qNBTeLh4rQsiCPDFbrkEB9Z5a073YmcLuc8qlqDE+G3aIyDxJS+z
	 t3Pno8xqn/tmm7Yp1VWxq9th7jPGAhnhBFZhstx8301r494xeMYyo+aVfM2Ur1mOTM
	 7hFRKWtSNmZvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5EF1AC41535
	for <ddprobe@lists.linux.dev>; Tue, 19 Dec 2023 06:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170296729638.30101.5107301104362726918.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 406ad600ddcb3ccece6e29eece5a3082d14d52d24daf5f90ef4d6f31cae9cd36
Date: Tue, 19 Dec 2023 06:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702967296
