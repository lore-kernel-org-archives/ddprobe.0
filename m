Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 605B019C
	for <ddprobe@lists.linux.dev>; Thu, 27 Jul 2023 00:12:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C84DEC433C7
	for <ddprobe@lists.linux.dev>; Thu, 27 Jul 2023 00:12:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690416728;
	bh=bchfrci/AK2G/ch0cIs93WDPX5wUzMcp+QMBFdv3cSo=;
	h=To:Subject:From:Date:From;
	b=glQrpvzHFe9IXmW7qxJIQFtAqdpyVBMpSQwV6aPkF/LuEgVsfbr3SFTOo0+YtKaKy
	 0gwToYlQgFAn9Bp4mQR7CEEHnrmpBwy/3TGSwq3cAIMGjBXJF8qzZ7YT3V6Gl+IsbO
	 xdn41kXBYcx8nPOnta1IPdRMc7vixzfs/w3QvVgs8zCcSBb4yfkoeNyOTl1tmvJgeT
	 0XEcX8T8hhjEKBPDkl2JJcs219DSiSAiVoF32xMpOJipJA2nqwAqWiApBfkT49tyd7
	 PAQYh1S4rIDk2tjozj+38y15Jbjbavyejd75s8INW1DxBYCp2r50JVg5wIf6Uth+mi
	 QhBrJn69L+wNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7C78C0015E
	for <ddprobe@lists.linux.dev>; Thu, 27 Jul 2023 00:12:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169041672867.28737.13326089920356498242.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0fee8d00727ea57c2c649bae2116d52695debcc917b6b1c6d694df4bf4dca9d6
Date: Thu, 27 Jul 2023 00:12:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690416728
