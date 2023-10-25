Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BAC61C6B0
	for <ddprobe@lists.linux.dev>; Wed, 25 Oct 2023 17:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GXlkfSgu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 814CBC433C7
	for <ddprobe@lists.linux.dev>; Wed, 25 Oct 2023 17:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698255496;
	bh=kAIS6atiWv3z0D9LjNv+3V7Y1JhBLTU6Af6o/Js8qAM=;
	h=To:Subject:From:Date:From;
	b=GXlkfSgu96IHYxmEDidiud7125d1cJMdGHTnNAilbVsdg8lB7Bf2s9rvvbnzPV2cS
	 5pKtJhu0o0fSGiKbvI9Swn3ppBkkLzgsMyzQVjwxmcX1NlEVr5NUNrfPB1D56T+iMr
	 lzS9YlzLzYrQVfZ5dP1I5PsDwsAd7FdQvKd52oWQ3mm87CJVQKISttb/zPS6WYxKyD
	 4zZosLpnHhkhcorFpe+AczWdJHrbLbSgmaQ8K+PiuPEi1SByCYvVS5IQ5R+/Vu1R5m
	 A47pysjfbfCEUvsekovTF5NB/b+6gfrRtqF7NaRIK91KVRIrree0lEX4trgtqRVYSg
	 3aIEZSh6IdlYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65282C07545
	for <ddprobe@lists.linux.dev>; Wed, 25 Oct 2023 17:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169825549640.1792.17413979277839095965.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41583dfaed917231f22fcfba9388b0d4962781bcfddf1ca2457377faac9bc42f
Date: Wed, 25 Oct 2023 17:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698255496
