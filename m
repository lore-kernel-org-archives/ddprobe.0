Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4066B60858
	for <ddprobe@lists.linux.dev>; Wed, 24 May 2023 12:55:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D79E2C433EF
	for <ddprobe@lists.linux.dev>; Wed, 24 May 2023 12:55:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684932905;
	bh=043Zvd1XYOKyEciRuHCUY03UJpEq8sBbYEfVq9klm08=;
	h=To:Subject:From:Date:From;
	b=IkKWVbqMFihG2vc7sUvwNojVd9Al/AKjC6IDBlsZvO2iDIszbjhmfK+5G7tZXhMMh
	 JUVysL9taK2KKEFhEisAzYxbP+sRZz2Sem5Tlu4ycRFKBMJUhodGDKatJ8y1ImQaB3
	 nGYUdWodFym3NOuKem8c/5+4nDgYtvT5Ynfe0dBhfsQslwd11tX1AzIw3anDd72aWe
	 zrB2zRafjqvUfEwRJg+X9k/MN+zCSm8Ovz2r09sBo47lZv2XseVQhsHhH9S0wEq4gr
	 FFNihfIxW5HbQOgc9RMCLsqOlk5X9QWYfB3i4TMG8GTP47hckmlYGoFz1sakJfseaR
	 VzBVfG5nA9n8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC2C3C77B7A
	for <ddprobe@lists.linux.dev>; Wed, 24 May 2023 12:55:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168493290575.10197.10217640543022730026.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7236cc6aff5ed9c41c6e839e77bc272f97af1cf9b5ac3955fda270cd2181ea9
Date: Wed, 24 May 2023 12:55:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684932905
