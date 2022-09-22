Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B61267C
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 16:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6BF81C433D6
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 16:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663865453;
	bh=7oZnUMExYP/sjdQhX+IcFt5Q477OI9Jk0IdnRfXDIm0=;
	h=To:Subject:From:Date:From;
	b=mzrAE+HSk0PULwK5k9kbcpVGNyX7IA+0eciX3lZ152TlljsMi8ve4L9XZZR61H/l9
	 USi7bh7N5tvjLZkwtJ+8Tg/IORbwiY8sC7OTPfu8MeXuzB9C6HHrCx33DUKEvfmHQo
	 /ODt3Y/pesZ98oqQX20OEITs0G1Xn6F0kAgbzOyTW3nxYBuuP+09oUc8CMbsgvEyBI
	 A9sRIy0Q1wGPbm0V/yW4Wud+XSgBvN0SwsKZF1FqyProHr0N0gYl74TnKfHxozNMxN
	 I8N3nRIjJSo0o12qAFi3Cyp9d7EeSro4/XIwxGejL4sX2a4lDuNZlVKt1o3KSZ0Xkm
	 ZOnEAdgoH8tew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54BF1C6FA82
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 16:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166386545333.11257.7377697658498504415.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa9ce86fea42691f622be9bf6ad5cebcc3b19d7756d193afaf318d603a5b4e94
Date: Thu, 22 Sep 2022 16:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663865453
