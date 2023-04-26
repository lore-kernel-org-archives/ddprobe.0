Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E7136FC7
	for <ddprobe@lists.linux.dev>; Wed, 26 Apr 2023 20:37:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3797C433EF
	for <ddprobe@lists.linux.dev>; Wed, 26 Apr 2023 20:37:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682541425;
	bh=+MFj9FQcu4gE/RyzWtWG/V3sEYyJoodscwH+5yf+2IU=;
	h=To:Subject:From:Date:From;
	b=KumEMJVI3jgI8nPObA/KNa3jviImuRmDo7Zc5omm/RnnuY+eR6mzDfKWomWgTkFpf
	 eSFxPn3P6UE0StLmfoBO037BS2a/QHFdAEJNWfKc8LjqVGdFdPVOYxU1DR7ZY2wHf8
	 /sjya365js3Ma2hE9h3msgTDxYhyu7CNKW3HNxmCG2MjBPEbQ1y2vqmv9YcjErxLp8
	 quT2paKLajZw/jDum0FUJ2QtUfslBQ/fBQsVW9+u7A75dR16dyqizny46/DatZ5gcS
	 aI9VC06EB0TWlnMgW6SoikFxjIxWBpRKgupYDhULfPDI/1UKHZjeGSSL13zCf8sHeH
	 7C6mwBEkbANXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8700C7618E
	for <ddprobe@lists.linux.dev>; Wed, 26 Apr 2023 20:37:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168254142581.2489.16024603132848597592.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3af132f15eefb0a86c26d88173421005548576f6dbec828ee94a2d514453224b
Date: Wed, 26 Apr 2023 20:37:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682541425
