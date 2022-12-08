Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 176068F68
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 19:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id A791CC433EF
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 19:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670527887;
	bh=jmlixcjZ+NkuIZQa/F8Ycmk3TSeUkDgDbkWm+i8pxvg=;
	h=To:Subject:From:Date:From;
	b=MBdLeF79DDZfh4rh2Z4LB93b37JZFqHlJpJ7/tDmkrllkSf2Br4gbEA5doJ9G8AB/
	 Vh2N3PPnw6XZNmWW5SOOaTN7K+44FYf2fH9sWGgDT2CEksx+nGaiLiR4TzGja33YOZ
	 DAcFNEXn+F8sFZZES9jNd74eniQCgB78HZusy/jgv+Rs+Jg/wfiSLFhHOlD0erEbQo
	 tp9kIJRk7gm2edRgq679qcIyd2LgSoQgMV4WMbrseazV0/mIa1+sMnJwXXJTYS1nYp
	 ZZHIrYE0S6qbwWi0znMPUqXCFqwRz+NfQEmGEuRQbvQzes6fAPxBUyxW47iIbYzdyE
	 HGaq5O/s3tVhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 77A26C4332F
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 19:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167052788747.7267.8479957738248042006.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7db7fa7322840b2795c401db3e3b9c7294f1f41b6f952c063ebc1d23a95eaf2c
Date: Thu, 08 Dec 2022 19:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670527887
