Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CD29DF61
	for <ddprobe@lists.linux.dev>; Wed, 12 Jul 2023 21:59:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5698C433C8
	for <ddprobe@lists.linux.dev>; Wed, 12 Jul 2023 21:59:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689199148;
	bh=0d2yHKzRf1n9Ylhk3+YKW4+iOLhtvPGHR3U1m75/PwE=;
	h=To:Subject:From:Date:From;
	b=jyOZFBpC+gVEsIcZF2ymum3FkJ0AKtK+/R5STIeX1ZDrQ9ZHmKGdVmgYdHzZR4zGx
	 Gmbp/FfgzVtpkreAnlQk07mJ1WtiQ7tzVPREfsQFUqT5hAD+QIqzc38Er6lKUoC4VR
	 C5n1zazqwBVFIJcFm45T8taknvDI84xsqSQc1DKgNQV73mkqSztp0NDdRsGKpeEun/
	 S4eNTG7AsQKG9sILrGj6l1o2Fmp/XwKQorNSiAGChzRoGWH8Kg5hapRHuuzNWDoetH
	 IrC8gQYovGVTJ2Au4/8wYiom5vwIyA2Gq6ro4r+dcBLcAdS+yk+AsT6ek48SRwtU0j
	 FFdP0Vo8S9HGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB809EB64DA
	for <ddprobe@lists.linux.dev>; Wed, 12 Jul 2023 21:59:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168919914869.22513.2996875046337318622.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c34d26ee7d1f31767bcde63b98de8a86581bdb079a7fb81e6754ea1231b21d31
Date: Wed, 12 Jul 2023 21:59:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689199148
