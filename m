Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9990138C
	for <ddprobe@lists.linux.dev>; Thu, 10 Nov 2022 10:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C248C433D6
	for <ddprobe@lists.linux.dev>; Thu, 10 Nov 2022 10:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668075054;
	bh=W2gAWNnRk/zYwZQu2Dw9khaahPq0ULrjqgmUlJALYRU=;
	h=To:Subject:From:Date:From;
	b=pXPWfSZernVvM9ZAY+Bxu9XyPaUV2vYlEiwJ0Twasx4Sp5kpMgyiTaV+fNt+IMDRs
	 n95gIF4LkbMXCgxAFLtwvcjdQDzhnX6kyrTVo2EIBWoGyqyhCka+nBOUlseUZDqjlk
	 p4YtBlshQoESjPRJDdxcvAHGRRxo00FKcVhqhW4FUAkKVP8QaonnjZtkSikBI76DOp
	 62KC2Xu42h5JVBW/9juizDZn7cM4fTq2J0LA7vTPxBF+BRZs9VOQ4ynVt62WC9vq1D
	 83xrwE113PmAHNuEw7i8Ug/DZToULC5L12AQNHtqKlQVft+6joPrBOnR8rhKot1PKM
	 XC66dO8FfioqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5CFCBC4332F
	for <ddprobe@lists.linux.dev>; Thu, 10 Nov 2022 10:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166807505435.9680.5603934709765280241.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71c444b6b227e561ec8d4e7b2caf1da6e804d3bf24fae5b7e1d9d122aa85b417
Date: Thu, 10 Nov 2022 10:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668075054
