Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 334798F4E
	for <ddprobe@lists.linux.dev>; Mon, 13 Mar 2023 22:47:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF654C433D2
	for <ddprobe@lists.linux.dev>; Mon, 13 Mar 2023 22:47:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678747625;
	bh=x4XV/ZEhlescf9w/qY294MvbQCkkz9S5ZpFoGFe9sFE=;
	h=To:Subject:From:Date:From;
	b=q+652OzMdPewwxDO++q/hID0k9G3rp4FGn5sDo4K3pfvCXEIqaAWwUOwLPPkA2dvz
	 E7zQM05WS6QBoUIxDz7tLGOTdNgscozBpulApu0yFu6w5+gNJKCXYbfc8BDsvA//G6
	 nREE50JkIlmadoL4JinMOvurzRYTsQZYTvNo32RXV3Ya1dWhBnTJ9gKrHUxcRhVWs2
	 OvKAd+h11GaK/ifjAKi9KraHRJ8YUiPaWzJMS0r40DqeVxsOzLYeGoJ2kb5c2uGAQI
	 h6gZU5W9BX8SuAWoPBpRNAtvDZh7XCooxhgySP+04LntBRiC4eiynTFPLxwFimWx6o
	 XeZgUb6kzUbpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C12F1C61DA4
	for <ddprobe@lists.linux.dev>; Mon, 13 Mar 2023 22:47:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167874762577.20816.14035272841547413452.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1aeb7be1021efbbff59148da522436d23eadb5dcf759840ca259830c6ebc553
Date: Mon, 13 Mar 2023 22:47:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678747625
