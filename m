Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 029811DFC5
	for <ddprobe@lists.linux.dev>; Thu,  4 Jan 2024 04:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I9oX8heQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75BAFC433C7
	for <ddprobe@lists.linux.dev>; Thu,  4 Jan 2024 04:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704344296;
	bh=3/8SQM0uM2u0xx3Kx+irp95pI0UwvXPkwcyPE/Rcu/Q=;
	h=To:Subject:From:Date:From;
	b=I9oX8heQif+hn83Sdx8mvVtKOw2hxFDIdGY/+3go9e6sFMkR3YfPksy8aKu5oFlvm
	 lyvPo0BP9DOKHuM/lU4+2HWSh2avhHDQl9lLviWlmmjslRhn/9qWA2u0WaacIDLRcn
	 nt61Zv61L6h4JUBIUhoon7lD9xDl5GD4t32ETT7Tit5xYVkTMO+GkVg2a/LkuUhjZO
	 Wz0/SwMjvX0vThV161D6iwWMCtFPNGHUKFzeGDFZ8yoLwWa3Xnrgj6a89JqdRuDU9Q
	 1orsPmPBmYy4nrTHU6LxcuNhg3LRgc0udg8P+ABVf535qzE3LNLse3uNIC5wgfMbeO
	 zYqeHbcNWuuCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5CF52C4706F
	for <ddprobe@lists.linux.dev>; Thu,  4 Jan 2024 04:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170434429637.16221.16396959827640070519.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26b46bebb9d1a6680b772eb3c795ffc5eadb2ccf6fb454336a437281b541cf0a
Date: Thu, 04 Jan 2024 04:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704344296
