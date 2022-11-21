Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B68C0645
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 00:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78034C433D6
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 00:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668990654;
	bh=eLb72/sOwjlQKLpKPrCUvAzyBnKI0XuXeDPo7EUKa84=;
	h=To:Subject:From:Date:From;
	b=au8Md4asoZh0hoOBaYrQ6nSxvFWoiuYkT+mnSBYI978aIYj+U1diUW23oUC/xA57b
	 KfIUUhOIbCzgtlf+3B7Avb40K/ZQXcSjc34WCOy/dYMl/b0yBY5ZvpCZeBIK7D0+qr
	 z32s5ov5qYJhzfJnzn9W7lcI7hQypnqiQcrNuL9Fbgmh9VUaKx1pgoomokLRF7aFjy
	 8Xm5wPu6MJ7CI7g0B26qL6BBxbPc1CgbINerUrnxtAVg0VMMxfY7w6+SnghLWFyofd
	 V+b8BH+Pq0fq7RI3j0SVTCdDtLqkpObacQoos0BR/krA/A95LbCMxQCA3Ang51IdPm
	 lAgCZgkzSoFcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59064C4332F
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 00:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166899065435.5920.7589196897603782933.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29eb83e6804621131c1d8e559e8caab61f7c6dfd6670699a4a170a142407bb12
Date: Mon, 21 Nov 2022 00:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668990654
