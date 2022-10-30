Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFFA4194
	for <ddprobe@lists.linux.dev>; Sun, 30 Oct 2022 01:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73348C433C1
	for <ddprobe@lists.linux.dev>; Sun, 30 Oct 2022 01:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667094054;
	bh=Chdl8LsOx9vCn10MpmG3ygw+1VZ+k0YDQ5AkqvJ/BBU=;
	h=To:Subject:From:Date:From;
	b=BQcBpT0YX2bZuxxA/KO1znqgk2h274EvOD2xBrzM6U7lgOR1ddGQxW1FwGUrRqudB
	 QIzl5ASpxDScRCcwe0z4Zcguvys3ZvWsHY8dc2Pa0EDjPtyDYBgrLZU1dGord+lj1z
	 SGjq3Jzizsj2AEQ/0Akb2qQsig2/lY19/ybMPRRaRC/OmQKJ66WcXpvrSQn7SNCof8
	 7K6R38k1j5rHCoMgKWt74Bw2FrvwPgnmpLcKvQoiAzWUPhLYnE8ISIJBWMFYcREA/u
	 mxd/vBqIzHNm4e5tKgNoEEMgo69LyWz7zil4q2ASqu0KrEpaw46K+x3tDjBzR8lTyH
	 sXHxiEYKSpQRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 516AEC433FE
	for <ddprobe@lists.linux.dev>; Sun, 30 Oct 2022 01:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166709405432.6696.13537529060785447899.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 311df985a94e91a76bd560e916a87c2d4db7ffc2e0f6e0c76f0478a78da00b90
Date: Sun, 30 Oct 2022 01:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667094054
