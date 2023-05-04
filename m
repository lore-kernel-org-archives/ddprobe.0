Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BD74C133
	for <ddprobe@lists.linux.dev>; Thu,  4 May 2023 21:55:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE027C433D2
	for <ddprobe@lists.linux.dev>; Thu,  4 May 2023 21:55:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683237305;
	bh=qXa/qOZmSPEF12+f45ijWiIYBIlQZ2WBjUTidJw/T5I=;
	h=To:Subject:From:Date:From;
	b=jkk3POOk8z8LFkFb+Aekb05s+rwgCuSyvwDYEBPwMljq+bphrsm294EBDQkmIdJHL
	 XLfLpbAPgIq+KCsstJkvj3WCydzRdyZVGlNTTD3wVwza8nhefTcSnDiXreVdtrzbM0
	 t60vBqhgdHN/AZ6v5POYjFNn6nYk32r8h5y1MtOWSPOLwws8ES2z44YPl38PqE+3K3
	 R1jgJQoKTgDvlQjCyzAPWtk/cUjRhAAlzWvYAFfaTS7jZ7ESCqw/oRJwHgErmPx0pT
	 23jLlMdOD6JGAlzqyl/zJ7KjQcrGC3/cz3vddpedA8JUxJlBqi+C0wMgC9gUNGLGTH
	 9KnDu2ejlUrUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C18D1C7EE21
	for <ddprobe@lists.linux.dev>; Thu,  4 May 2023 21:55:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168323730578.28472.8988990169165371440.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6669f03f85a7146555c28e301dd7f391ecd93f4d9898ea66e3ceccd6b2f17e2c
Date: Thu, 04 May 2023 21:55:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683237305
