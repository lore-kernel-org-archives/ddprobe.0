Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 690C47E
	for <ddprobe@lists.linux.dev>; Tue,  5 Sep 2023 04:04:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2F26C433C7
	for <ddprobe@lists.linux.dev>; Tue,  5 Sep 2023 04:04:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693886648;
	bh=+22vzATz2oYgbOyaFRquSTh6OhOCZ6uZV6y35TKDPEo=;
	h=To:Subject:From:Date:From;
	b=JQ4+QFi1wl6ZJPz5RRU8nxC4bcdSXYCuo4CQIIPai09ekxLktEPZRrW2rE5Hoh+vi
	 TxvHC29S1yVWnpfcbdh8ORFw8K5ksBQLwQOQkrdtAQqG84MCkbEZy3hu8+TFoBqycy
	 VNFfBYuqx2isOrJMqArkCLThetYwNS2xHgD45wIgN5yKTz6bte6h6JOBcAkNA7FXzf
	 l1VdzHTp6TMLr3B9yg8zy4emxAQbRVGNPr+w03qPyMvhvLEchOFBZYMdjL5zo+a591
	 RRYCG+12IQLuNB/b42SNLTcYyi1d3aE4EKUFZS0XyB2qESbQ2lcxiEqZI2mWMaacFJ
	 /YRIl7whmAl9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4487C83F33
	for <ddprobe@lists.linux.dev>; Tue,  5 Sep 2023 04:04:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169388664866.356.17328602976184936380.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e19412982675c03d0793d827078431e0ddee85edde8a7db2c92504ff7200d37
Date: Tue, 05 Sep 2023 04:04:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693886648
