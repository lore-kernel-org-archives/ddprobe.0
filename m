Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0ED612EAE4
	for <ddprobe@lists.linux.dev>; Fri, 22 Dec 2023 22:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fL4bQ7C8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 88FBBC433C7
	for <ddprobe@lists.linux.dev>; Fri, 22 Dec 2023 22:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703282896;
	bh=XIhXt4i+Gjg2CYLEfGqG2sjRCkhO9YHQHrLUjWiR8yA=;
	h=To:Subject:From:Date:From;
	b=fL4bQ7C8/4pQfh1edXuwNBPa+AnIzfviTyEUzRYnQNi3Hy4SaITwHPCt8APxsjdZe
	 NxCTeJpqMNbczNDpyso3OHPFGKaMz402AhnE8cDK2M9IF1Js5a3sKxx5IF2wstGNfH
	 8mM2i89xEg9VqTNFfA2IxqpOC5zk5B9q1a/baSy62cD8S59cvGaF1n4jJQ2XDyXs9Q
	 nY52onmq29XvMNn735Bz9WIlLQetQ4cDW5PLkjfjvIkoD05WuuBsazHuSml5Df11oQ
	 IyED3brHPQRAlhru9jLqm5r1P19QV53cNGt1XfDtFQZJdtLt0jxTw2nGfDo4b2GeMH
	 WQ5wU9H96lWqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69778C46CD2
	for <ddprobe@lists.linux.dev>; Fri, 22 Dec 2023 22:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170328289640.6754.14300092421682574490.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 899aea352a4b5972a20c2409806ad69eb658b8be02980e42672e4c51833dc298
Date: Fri, 22 Dec 2023 22:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703282896
