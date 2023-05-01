Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E723A5D
	for <ddprobe@lists.linux.dev>; Mon,  1 May 2023 11:08:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 00156C433D2
	for <ddprobe@lists.linux.dev>; Mon,  1 May 2023 11:08:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682939286;
	bh=yVoHsHYjRDKy5W+whSgsthb6RbeNOJj+lLSzrfD6qXQ=;
	h=To:Subject:From:Date:From;
	b=G6jj6UNMjq36oAu4YDKE+ru4QmXTpDNIUYOd4IsTSxyTpoNKUWH7Vs5z/exUpvY7f
	 Tgc07dDWcXmPBnSeFYvO21U09YzKo1it2MXV6ITRwuDiG57NNJUNBeZdaXkebmLrng
	 EpQl4k4NLo81adDK+EXomNn3P/s6034rSJSoDqNHKuBfHi298+aYToRJAjAyxewn+K
	 SM50N6ndkybUqfoj7Beato1SiJAmuaFLYEmZHfTikFvTARc9t3d37OlzTk3zQASKEY
	 01UEtbsLqLZs4YZuNCgt0k74G1mDH0F55Vmmhc+JfO71QFFgLIKrQVyUvFy/kezVok
	 zAibMSam7fZNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6AFDC77B61
	for <ddprobe@lists.linux.dev>; Mon,  1 May 2023 11:08:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168293928578.15511.6812155159952652806.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8bca425a8e6677c3e2a2549b4e1f8ae6d0b0e370dedb89999298f74570bb1dc8
Date: Mon, 01 May 2023 11:08:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682939285
