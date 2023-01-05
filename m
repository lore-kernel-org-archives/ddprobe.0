Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF2E87F0
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 04:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D16AC433D2
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 04:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672891287;
	bh=Zt+lGyXv8qaj/DXzgwGwwM2sE3jST+oHSxS5G1UHYno=;
	h=To:Subject:From:Date:From;
	b=HBoH5nbmYNGsIg+rcs5tQmuezHCy+wDg20mc+fJ9oDCl/FH8fShWZsiWACCyOPYgM
	 KzdrA6xVeAD6CiatfGput8uJHAsdSrDsoSTwyj3u7OFx5mSU0dSWWce9ljQYsWJntH
	 Da3xnSH/CTf/UDcUiMik9tAhV67v55nkQKyltIUF7pe0YqUfGBb5h2EcypMEYCgwnv
	 Dk7pullblVDbtnWR1KrQQHYX8SEoU6q0GERPRd6G6JoWaQ9qqviVnEtgVUfndhFGcZ
	 GjNdW+dfgSOes16ZtfULFf9d6KCfu5ptvxQxwdmH04eu8/AXtde6/QXSOa/2PeWKwI
	 xte45ZYmsoWCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63A42C3DA7D
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 04:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167289128739.6089.14686381381039245536.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: deb504675f227b6e8a474830cfb07b58e845ccf6bb034ff994730dfb79a73534
Date: Thu, 05 Jan 2023 04:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672891287
