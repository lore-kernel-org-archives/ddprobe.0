Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2395A134C8
	for <ddprobe@lists.linux.dev>; Tue, 30 May 2023 13:03:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C83C3C433EF
	for <ddprobe@lists.linux.dev>; Tue, 30 May 2023 13:03:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685451785;
	bh=oXsxMzbHbwy74tYuWBdy1td/Et3q/yy9wNysndNRhEI=;
	h=To:Subject:From:Date:From;
	b=U2hTnJv5mGwcEQlrvy/CrSasIZm8jvk6UwiQmJOByKNIitsS0o0O+PAFG8+TbZE3H
	 Fhu+sCVjIO7apS5/r486Pf6mKHM1xzouPOIpa+6ZV2ujIogT1atTst4IEtkvicioTs
	 ZNyXR6hRpflNmX9rXB0R4qYA9dbJ2aSpZZJpmSdIJUpqiBuSLDzElG1gMHZfj5Smj3
	 1QMfY7arYAcDJviOAdbImZtZnFpiH13mJ2yQQ51OtL9GyivN82SRlObnFCW5XxaXRE
	 2vSxehHEZYiYsKqNbyIdR3wMoGbbQrFjTrsnQLzlhG/ZEcD0Y31QKXuM0s8k0DFYIt
	 gVI1dMfBTJ/hg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2532C7EE2C
	for <ddprobe@lists.linux.dev>; Tue, 30 May 2023 13:03:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168545178572.22002.8659647998511531081.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2879fd5b3ba04b2dba5e6abc0de10226fef71303ee26838344b626b875625a3e
Date: Tue, 30 May 2023 13:03:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685451785
