Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D64F32F3A
	for <ddprobe@lists.linux.dev>; Wed, 18 Jan 2023 14:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8121BC433D2
	for <ddprobe@lists.linux.dev>; Wed, 18 Jan 2023 14:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674051687;
	bh=RlWAVbwuJvmcBp2Kn8HvMVxooWM7zj673JrHslC3I6Y=;
	h=To:Subject:From:Date:From;
	b=EkgVC8ZPo4PWGLSboCsklkdxsKIoOfS1O892nx+IveDC4qZMGjMNuD3twqFZQCNHJ
	 NNWPbiXQaNAIi7Grl+YWUFuDgOyUtTwEvfutcutBYhiAMVr0rVwZfwhfErt8VRCg1H
	 TIbjlQVu6Np9h809feAH3uuGkwLeJU1QRce1wWAZ2BMg6w843ELei7yalAyjLNDzf9
	 TqmMjvRrIE7jQADKeRWwi5UDzCKy2u/NLXhI/aaOeQwryx5esGeq26lKH8yV3jJavd
	 b8vYCfm/upJcWQl/EW431l/kD8Fgtyu7+X1K1q9rCmnM2PYeiaiVdZCSX5fA4HtPNc
	 KMfcliFqMhILA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 681E4C38147
	for <ddprobe@lists.linux.dev>; Wed, 18 Jan 2023 14:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167405168741.11339.11959849509262036234.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40493d1f829ba81d0f018473caa80b3da5992e25c5135eebc27f5fc9023ba95a
Date: Wed, 18 Jan 2023 14:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674051687
