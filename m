Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D070533E1
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 22:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8103FC433EF
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 22:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671749487;
	bh=65G9KbB6vqa50Dz3d8WTItf+3kQNi9ugIQunxE3BMYE=;
	h=To:Subject:From:Date:From;
	b=C4kT5jO9O0x3MCWTYyXHCHZorkBcPtbGJLchhNSf50r8EodRYu/7cjLc1BcktuMwf
	 1ln++/9MxB/A6XxpvNZwJGzgRN5tzheao5FiWdNi4IVgmyIP6qAF8vUYAWn7IPl8hE
	 6H5NsewlIqLWh6mm4TpcBQW/gfmfTZAHTxbOl38jjIsI/5VokXLn7L+uCdnuiBoyEP
	 fNM+SYJp8WklVsyrjn9HFpjxPL+RxzeLBmKvFXY3Nj7LGE7zi4LJYdx7eMkSK6M95u
	 C6hKoJXtiCWuYh9y5XPMO9Lz9l6QCOjCvlBaJLeiJZ7qpkf4K5z8OIaVQA7hKZacNZ
	 18gZh8sriHv8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63AABC4332F
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 22:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167174948740.31945.6283998841071862156.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd1145741052014914ea726f3a1f2e9f1ba5a3a959696adc3079f04aa81fc86d
Date: Thu, 22 Dec 2022 22:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671749487
