Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD939374
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 03:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 89B9FC433C1
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 03:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670384454;
	bh=+NbexRted2amAwGWWaU453BhwjwP1z+DB2Pd+ALoeaI=;
	h=To:Subject:From:Date:From;
	b=hfeDdgLdUpHozJQdP994MGFc2JzqAFzMT+sSZFsOczrx6Gb7IW4RE4UDCzcuK49rW
	 O6oZAkVt9pV/pTmWPimZvHgUgoLmjNsLdfvT3Tw31Iz+4SWRfsvsQmmBe/G6CydBy4
	 j3hEBXSKYHe/gY0gwkf7ARk86mxXzxDiMrtmDyv5eyAMHv1eFb3i0q6NuUTZk70F/N
	 E7GWUUBvnqXDAnXUQ0m5vzbTD9QyIxmlpVoLREQeCz0gv7wKPfW4s3n5WuSfDaydpf
	 nrF5N57fxv6KqTDeXWrW+kl7WvM1XQDiDR1bEvc1+8CMeyMcbKLAxuxbKBvfi1quAN
	 2hU2TsEUEF0fw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6FEADC47089
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 03:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167038445444.26310.10078067436999597214.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c84173f8a5ca39822e31bd1672ce477c52eb2df87f6b1790769e04a69afa1c7d
Date: Wed, 07 Dec 2022 03:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670384454
