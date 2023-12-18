Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0795A129EF7
	for <ddprobe@lists.linux.dev>; Mon, 18 Dec 2023 13:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ldg6sQ1p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7508AC433C7
	for <ddprobe@lists.linux.dev>; Mon, 18 Dec 2023 13:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702907296;
	bh=TcPp0Xdc0Q8fn7fEYWwEj07NTAQiEMP3SrCQWvDNU0c=;
	h=To:Subject:From:Date:From;
	b=ldg6sQ1pMCzmrxryK6LtIZRibYGkJ/bzCP7id0NaDwXyz6AdkmtauXz+/HyrPEhwq
	 YU6IKqgTdFZWfI5ywbXKqsf9wi8gTIH434Rqj5jRPZDeV7PDtM29PJ19i3VFLOkgWG
	 Z7+7nX7/rwe7PSBr/j2oawnWyFGCyyfkH1kG0ZI7c09GSPt7beVHlUnmfabdw0y/0F
	 BjSywL1q0lPFreJfFoRwhtUrOLduRQCv3RGNfzc55LG4nzLziPfsuyfeQWXbe1GqD5
	 c+dk7xWOJfjHiswFp+1ZGAwjukW8dKjaKjUat5Q2LUsuVGpWHGw1TvAH0vbWB+c0dT
	 nP24CSHZDOu1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F416C46CCD
	for <ddprobe@lists.linux.dev>; Mon, 18 Dec 2023 13:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170290729638.8572.17820390054983892880.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4fb999b367b70cacec50cf9f909cae142db4c4565cb74d5b47bc0d659a451328
Date: Mon, 18 Dec 2023 13:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702907296
