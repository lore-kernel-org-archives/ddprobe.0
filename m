Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3E00627
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 03:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72B51C433D6
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 03:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669692054;
	bh=6GL5afvQyVsduQUuAicgUE1BOzJ5xHZg8Z6VGAk3uHA=;
	h=To:Subject:From:Date:From;
	b=p3DTfKqZa030+WvczzLWHDMVqFMhSJnmkFVWM2XQAYAg0fDTKpPXOBrMzNge7i6g0
	 4pQBjTXrf6RIQEEAW3oF6ZcxfHmONjuGG9ykhlWkHSEQja2c6WSYzFALh3DJBtsEAO
	 P9XvENGOooUxO9lFKrnNGBTVA0U7OxOGZeIplxcu98M1E+GMTHxpJcsBofoO5aXdFZ
	 8Q97/DUKZj0fSxGwjNXDSoTvcMb7iq1Ap/Zf6wDtqv8QuHbbMBW6ckoL2ci4HPXt67
	 W9NV9FaY+IT+RRAPFQlCHxKELYU4xGWQcM4VvIw8IABAaOh7b8QS1awBpjaIHKKoMT
	 pLZC/hPoeV1Ag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B6DAC4332F
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 03:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166969205434.11667.7878575548509000484.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41fe9248b9128ddfe0cbd38e0a8b54dc10c4a0f2f59c24cb56b320cb1d79786e
Date: Tue, 29 Nov 2022 03:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669692054
