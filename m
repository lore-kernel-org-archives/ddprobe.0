Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1DFD1111
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 04:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 704E1C433D6
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 04:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663734653;
	bh=yrTXpQS/dG1L0yI9MTXuDaGI0KAcvi4POvWVujHVuRg=;
	h=To:Subject:From:Date:From;
	b=fPhSy4DtytNlNQD6ZS2gVM3hI7yTqNOcGcgBcdTFQhpLFTlDBXo2nIrgOjAQy3u0D
	 7jcBtlsP8iNSPxGslrENy1EVn8hYw+PsszKAQblmTvYmdOZuPLwpZfhZrwL8UMOXRq
	 6St0XtUt8bCzfJPmglpsxnNFQHQZROB9S6/aRZ3Wd7JF89S7yijDiYnzw57nwB3edE
	 NmMbp9DmnDXRBCnzRKV9jZ4c91eWyCKN6Vy5t2BQ9aSTI/OFySrKn/m6f2PuKfW8St
	 4PAOgK6BZ/EZIyLlJV6x50Kh4F6F8USMgDHUyl7Yn1L+ZQtUS+A32XAFkQOjCEcEeD
	 VgvFnaLjPfA7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55A36C32771
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 04:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166373465332.9476.4051191124357412227.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 873595a525bde1118d7bffe88fe772e412c0bbdec6701202b1a5200600a6e0ca
Date: Wed, 21 Sep 2022 04:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663734653
