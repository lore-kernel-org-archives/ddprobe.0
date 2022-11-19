Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C74957C
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 04:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6CAD0C433D6
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 04:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668833454;
	bh=kbwET4o1i12GxLRXSzmPBl9P+3kpggsOToiQlOi71+w=;
	h=To:Subject:From:Date:From;
	b=iLxbZ0a3G/E5Sg+FPPgxt78H/QzsS96LXzErmiRv+RbwYU50Ou6R2+F8NkgLaMluj
	 gBuOZ1nioLEym3tNkOlemhAXZgnnxaBiADozbz478e+jnYtdb5JpWZWhr5Ccp30kJn
	 GoCnRlOIkJNGLsBtqjvoma8mva5/Nq6pczg0HNruuCbQslnz/TxdhXIuEMic9fbZdx
	 I6rVHjjDMFmysDVbpVxpLFFAbFR8ROfQXY1pDng5tfniJmYPfOnDFmI2vT1ZRtpaNX
	 SdiwpcPKKpOL34FOP9ipvHhQamYm8Hj1oq5LjSwOLsiYf5EyBwj0i17pgB9wbmktIp
	 eF6PiCuskE9HA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 532C0C433FE
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 04:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166883345433.9803.13444471684247791051.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2cef9b80f0bbc3a6e14f9c90e2ebbe0b1d46011bbf47362d16190fec8250329e
Date: Sat, 19 Nov 2022 04:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668833454
