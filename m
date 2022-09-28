Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B99117B
	for <ddprobe@lists.linux.dev>; Wed, 28 Sep 2022 11:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6647AC433C1
	for <ddprobe@lists.linux.dev>; Wed, 28 Sep 2022 11:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664364653;
	bh=M5SLBAm+jFohNuNiKPwezZGgh2QbeOpUTT5w6f5p7V0=;
	h=To:Subject:From:Date:From;
	b=CAiS+86Pz/Ouwz70DJlP1jXjtthmudAIImHvNHyRTzkd7519ktyUA40c1KgSZCGd9
	 jOs53Ktmdmk+zA6easmDPNR3C3BB5JuqCZZl5EtePRlMTcOctJ4ZruHj4ZH2VWL1nC
	 Mum3ZJGCcKPiORFahG2Ca455ydSiUsQqgAyX0xgj/OKQ6jBiBgAWvneN9V9V3cZ1oR
	 h52WNilQ/NaoYheW7t+ZcdKmtybX+nnTxU2XiU8o/DIpMf7h17OkFbgHNIbqGD/XiC
	 ulOplZ3UCYn1a+S6K4QcEHGMjHvW1MBQGqwiGfE9h5FKMp4MHvqE/D9CRAOiCXtS8Q
	 pxbQt08O8M67A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F190C32771
	for <ddprobe@lists.linux.dev>; Wed, 28 Sep 2022 11:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166436465331.1378.12650261917975339278.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52f6532fac00f451a04ad83fa7876baf2875335e6aa37f227d22e48159325979
Date: Wed, 28 Sep 2022 11:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664364653
