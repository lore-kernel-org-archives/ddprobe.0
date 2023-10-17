Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44E1844466
	for <ddprobe@lists.linux.dev>; Tue, 17 Oct 2023 15:07:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WnBcmQw8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C79E9C433C8
	for <ddprobe@lists.linux.dev>; Tue, 17 Oct 2023 15:07:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697555228;
	bh=ljXihjZi3KobcPpWf42gtnFmfZa2C3v/Wex2cFMC8S8=;
	h=To:Subject:From:Date:From;
	b=WnBcmQw8gsWXnujSwS1BmaJ/k2ZcXv7wd2YfafWd8pRVyZbk6xP7OlT7htngIXce/
	 D9CRjrBvvO1DmTG22OFhZsrBwCIsjoIscXd14g31mHBb0xQHXFYIklXsIQpiOrzha3
	 Ah0SjGmqN1maV9rA4OBAoipSmh8Ya4BWsP4MhEn0Q6rs6gm9093MIxgMT2xsDBebub
	 vQ1ZTU0tT1dFiqGvuyoRPa4Qjz+uyso8HJZXrGolymWFS+YrhaEZ3jQZKHjKv6laEQ
	 qedUzUfPgp94Y+3qrI1VUC3TDS9ptS4X8kaioQUniefY7GTag6voIvrPVXEelyOcLO
	 RKiLrhDTzmiBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9061CDB474
	for <ddprobe@lists.linux.dev>; Tue, 17 Oct 2023 15:07:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169755522867.15301.15767123935210913370.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94939bf1e340a1c2c721e6bd79775313091fd982d53c16af7db5aef3f9d8411e
Date: Tue, 17 Oct 2023 15:07:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697555228
