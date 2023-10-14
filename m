Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A3377E
	for <ddprobe@lists.linux.dev>; Sat, 14 Oct 2023 00:27:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mkw2W2V0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF79EC433C7
	for <ddprobe@lists.linux.dev>; Sat, 14 Oct 2023 00:27:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697243228;
	bh=aETFYXDpGUH1rhjdMtbkB2lzBjfArKfM0fwsLAMEvnY=;
	h=To:Subject:From:Date:From;
	b=mkw2W2V0uCwI0EUVoSrFeyLacYMX5s20uJKtldbeEuk+xqe1Z66nenStHjQZiF6cq
	 rNHd/aTeq0qNC8TEN3lTyJb+bFgP+TZ2jSxNXwPkydMIlyQkf0Qid3d41aq9QVikFI
	 1fki4Djd8EVenWazXBDFA7OPAG7YYg6mkxHi9h+ou6F9vXPChEbPpaWroOPHAR5kUZ
	 43lKSrAN6EyxILKtidCrCpp716B/hc/OByFjETGciFVCiojBJZW/Ly3QAT1ZSfOokJ
	 uqlYkYkXGhP/v0HKBAYYfkC5/+7GAPoaP9b3Elq2Gyb4+CM1caOFtupRUO1rPI7hOT
	 NRQpF0q+WXp6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1D56CDB47E
	for <ddprobe@lists.linux.dev>; Sat, 14 Oct 2023 00:27:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169724322870.1063.2043523735942056527.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f8220dc819105da7442cb6ebf9b2bb69ab2c937b8efa16f8fb093a4f0c772ed
Date: Sat, 14 Oct 2023 00:27:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697243228
