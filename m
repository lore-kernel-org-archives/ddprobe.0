Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA1262F21
	for <ddprobe@lists.linux.dev>; Wed, 18 Jan 2023 17:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7EAD2C433F0
	for <ddprobe@lists.linux.dev>; Wed, 18 Jan 2023 17:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674062487;
	bh=rF62x8SSZ2sqWd6cmKHiG3WvT1Pz+z0eeO5GAlw7Q9o=;
	h=To:Subject:From:Date:From;
	b=K3q7nh6KGdXXRwlLo5c6vyacxRws+Dn2Z2/ulSLNf15F4KOjkJdHwKuh7LLZXYRDW
	 y7sLC3FT0mT9G9IYj5Y7ECxxQ/xqwItdHTiteo5U9oe+DxcX6hX2xWS8OjoQKBdaOu
	 9Iv4D7S2K7YlRp4uZq7l00mxx2nHB/XuI8RPLihlEOEpSAdGuMma/4h9Qt7YhYTGjy
	 iFGLfFUSDurRrKpT6zcDSoJrugCTm9p/dMT6cXRNKUcj4imV1ONoN3ggj+DzNZcO5/
	 IIffwQT+twBS8R0/+TU8DtemusNI0I89kFPzrW5GQTrz/nLmOdU1HevlG2eqI8vAyU
	 lN3tJoWfX4MkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63AA1C32793
	for <ddprobe@lists.linux.dev>; Wed, 18 Jan 2023 17:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167406248739.10651.9989734432143848552.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38c48902aa89747197508052e252d4ebc8ad243a234bb864e4b6db2ecd2a41a9
Date: Wed, 18 Jan 2023 17:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674062487
