Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B8418F44
	for <ddprobe@lists.linux.dev>; Sat, 30 Dec 2023 14:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VO3aU5hX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8DA1CC433C7
	for <ddprobe@lists.linux.dev>; Sat, 30 Dec 2023 14:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703945896;
	bh=wzOWM9JTQOFEO+XTENc5m1M2xsQzmoUEsrj92mjQF1I=;
	h=To:Subject:From:Date:From;
	b=VO3aU5hXMCbCSfgm7nV0DsyYE+5ksb2IyA4vHmk5IV4JZLR1HvlRkVlIjjc7NDuIp
	 QYlaiuaDYD7ud+EUZ3DgLW7fX59eCuGnYB63Xz26StdwkVxa/spk9WLAKjejBJhbq3
	 m6dBVEzGs3asiuurypX3bWTderkzt2YdEsRUrUAIx4mx4ikJOjFlfcplXWe0Sk6IyU
	 vbUQsHHfOO+rFpx8Qnorx6aLpdXV+s5r9QJ5D3uQL4VGQXFlE2KKE0z/9NBLZZHwOz
	 rO41Iw3rZzKCUqZtfLhstGPpUnK017nJBAv5O/0Hb8fF8+dl1XZCPIwSIUF4Zi2vRT
	 CJfJZ9LCVP5wA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65417C46CD2
	for <ddprobe@lists.linux.dev>; Sat, 30 Dec 2023 14:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170394589637.2939.18348899974058924200.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35645f5a1c5e92d25c0a4af5972a31a7273e588731d50e7dcdd2a48da2d417e6
Date: Sat, 30 Dec 2023 14:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703945896
