Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0965E80F
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 08:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id B310FC433D2
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 08:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672905687;
	bh=9I09W0VAIW9wkRnAcooNxSBtTKP+Ya6aDoCZv9W42TU=;
	h=To:Subject:From:Date:From;
	b=hHoUS4jpbLNcDdfYM8WO/38IE1p6LzwbUsyj7TgEdaG+jzBlLA+nSC5q7x6cN90ex
	 rXGNe1sirsWr4FK00ImG3XgAcmrQsCEMtcxOjeTCACAlWIGNIGYk/5OCau4vvAZUn3
	 3rADqoCh4FTIQ5tZ5OkNxHnnBFJOv7GzIu+IFXYWDKEORk4Ot/0knC0fxnJ/9W0ypD
	 dWdSZ1qJBoYUEEKO5XG3cXu9aKz6bfu4ICzjr0l5EQ6pCpgbXbIlaXZpNBB1qiM9bC
	 y87nkXT2Ix0vhLHn2KD8Ux7wnFT0+IsbvFstHWXrbAKy2O3zFI2ask1Y1xMsh1wB09
	 B+Es0BGxHUz7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94630C3DA7D
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 08:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167290568759.17220.4382635174872658597.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a42f929b99c2d10af41f0f48bc9c3cc21e49bc0f828035b4093c98d5614c776e
Date: Thu, 05 Jan 2023 08:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672905687
