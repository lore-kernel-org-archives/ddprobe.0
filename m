Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDBC06ABD
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 21:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83E52C433D2
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 21:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671917487;
	bh=kNiof08+KXz22kx1r7FPkGTwXOaOlrqmxUQc4uudV/Y=;
	h=To:Subject:From:Date:From;
	b=O5I7N7/fMuXx+vGw/txf6ci7ZiXmzG/6qFM/u3Ed0g0zUd7yk+26HjXdcuWxhmecq
	 FomaXxhHXTYajl1TZoyE4pX2ZfBytw19YcZHUf8sj54IEeqJ9BcuTaHmg774+9BkC6
	 hfRKi4MOUAsXeKIHfpFGZ9Bcd2iemOWd7bWPcSeo+90qcMjkOCGRtFDGWsAzirij/M
	 rLqGK05J8g04RolWySoY0ikpzPJvUg657qx1Hw6N/0D0JhUkhqCxN2qy6qqC9YW9EN
	 JwySHFweyUJIQtxOLU6K8PmGDVzWfHdyOgjbP9VhRjnIMhbsQRuB16s4aPvwC7ytFs
	 qeLsg17sCTRXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 694C9C4332F
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 21:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167191748738.16491.2251754323641945775.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a0e00328018a3d9421465c733f3bc2684c3bd959a21b00e745aef473c40086b
Date: Sat, 24 Dec 2022 21:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671917487
