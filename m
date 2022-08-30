Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2BFA625
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 09:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 69AD5C433D7
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 09:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661852453;
	bh=pXJPGcRP9keM5qqehfqobpC24a8eQURo202yNSuLhEQ=;
	h=To:Subject:From:Date:From;
	b=P3p+ywRrdSgg0UQz0OqosGDPU7SBOxyweQLEATLsJfdCfspZqIpKWv0HnolcEmDI3
	 1yhThwuJG5TIYr8qnqw4F4uUsIiXURVY0eYvARDK1N09Bl38Ydu8edgRj72FqMzZDz
	 Ufa5CokbtgGFY+F+qr12PUp5I5SFgZDL9/U/r/9qYFQWahpIqEXEo7L969Y+clxWO1
	 gkr4fo6hgt/dcv4ZRYy3WIZftaveXbkuHoeZeZnh6XXYxT5firlBryCPZ6q0MJd3H2
	 uNnFPEdtvgPn4M7GchhCPRE+4FhHmD9mwUcu9ZDvJWhiqr49VssrJv7HK59QWHlZy0
	 YAVCulCAwCKVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F9EBECAAA1
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 09:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166185245331.4668.10207212995547831564.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b067d6184748435500a91f1e61378a4014ebd59834e0d839fe09564f882c323
Date: Tue, 30 Aug 2022 09:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661852453
