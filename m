Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FE542C75B
	for <ddprobe@lists.linux.dev>; Wed, 17 May 2023 14:14:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0262C433D2
	for <ddprobe@lists.linux.dev>; Wed, 17 May 2023 14:14:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684332845;
	bh=Ue+ghV71o57Yyu+E3/PLjYM0vg0D8pwYc804wIOnrkQ=;
	h=To:Subject:From:Date:From;
	b=Lz7PvKSS3s3Wgfbp1cBC1s46Dkrwvsa0fc0e5xPxKz+z1cP4JNeJd3U5UP9VzjESv
	 bxBUovZimX5qqEYxJ82dC0J+cJWylS5WMwGhmZE9FckIv39mRV0eEM9t63ZRomRD18
	 z/YrsSjLqJwd99vW/HCaR/Ceh9rHHDEgJLpsiGPVDqJBDZpOGdgTa/WzaaTZLnKsJ3
	 1+KTohLe5ES4+YtEVgyMWVv6J7JrnPesJWaGg8ztKf1hUHZ6jppdnGN/iE2OpHQqF3
	 tDNkLulWH7BRQV6BpwAjudtgQpOTQK7YX5EBvDnvLH4fv8A21D6jcobtIPyaUQkfcG
	 iAnuxVAX9yn1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6B2CC77B7A
	for <ddprobe@lists.linux.dev>; Wed, 17 May 2023 14:14:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168433284580.21203.6247518609308811330.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b52047e8ddb53784a95b154cf829b5746b58721e85d6ed2d26bca0ecca02e7c2
Date: Wed, 17 May 2023 14:14:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684332845
