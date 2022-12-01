Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDAF810782
	for <ddprobe@lists.linux.dev>; Thu,  1 Dec 2022 21:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6BE38C433C1
	for <ddprobe@lists.linux.dev>; Thu,  1 Dec 2022 21:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669931454;
	bh=Mcc9ek0sLyknBjobs2fgF+yvozu2XkEd1PDIG62ywbY=;
	h=To:Subject:From:Date:From;
	b=J0IIIxsJeq+nABvMFsv6vdz0UkQliEI/gBdMyGUw2k+b5hsf6yfe9KtTWUUec1NYc
	 7QmAaUWtGCUcQtoXgSIcP4AEgboafYyXAhZMnJMlEobRVoT/CH1tRw3BzffzfWdY3R
	 XMmIk6444swbzN/zMxxVRY7JgZIGP0wKOa3x/vZtY3bmp8P6emiYqELxvuFKLPSGMn
	 npnTkgjNvrac846YZMbI2tLXTQ+pjDvlbvjeVzW5y1RiI+YdyvIeicFChSgqJx575I
	 pQMqpTpIV7JHIRd2pbQJcMynnnE4YcWK40rxHNbitCCepJQr0ekKr3/PADfSkrW8MW
	 lLgpZFhFz/hJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52F85C47089
	for <ddprobe@lists.linux.dev>; Thu,  1 Dec 2022 21:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166993145433.12872.716022266998529718.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a9c4596ee5b0aaffcd573072c4fc2cf2fae78e740aaf8f26a31ecf39d70dfb2
Date: Thu, 01 Dec 2022 21:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669931454
