Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2CF07C
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 18:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6FB2CC433C1
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 18:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663699253;
	bh=bLrPBGgT3nCSZWkd5P449bsfoUXi37eDqrfxjk+IqKQ=;
	h=To:Subject:From:Date:From;
	b=AK86eHZnwt2alSo7C5jXOQ0wNU0+OkT62vxUEnwHP/9E7OaGglZ23r47oe7S33Qc1
	 61r8GW7vGkBNOxNBMj7ssqJjOWslKXHw3yMBVZfgHwOF7J18YzU/6AOq+ILzoDF1ef
	 AflMhiDRywg6a/0pQEQlcUn4Q3ciwZiGV2X0FQZbMZhArrIZarqZ0wrRIfENCkdaZB
	 cu3e+PGbpdD/cVp5D7cGUuA+FadpcuQdUmXyPk/mymSR+hqZfEp3+RaHbLqpvLhwUU
	 eamVgmSgo3G4sW5mci+CPzDb1tlW4bRQJS0i/TvOQNhCiVexo/0JUPX1M681tnIRI1
	 peOc+qF/EhHbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5101FC6FA82
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 18:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166369925332.2192.12534073564685045995.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18b65b423cb45967ecb9bf2ef05c0c1a0e4261ee2358787462068a43e74c18dd
Date: Tue, 20 Sep 2022 18:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663699253
