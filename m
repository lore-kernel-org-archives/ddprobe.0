Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13C4ED531
	for <ddprobe@lists.linux.dev>; Sat, 21 Oct 2023 16:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mwv2f3KY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 84B8BC433CB
	for <ddprobe@lists.linux.dev>; Sat, 21 Oct 2023 16:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697904496;
	bh=OxGH4s8WA2XDKTAp4sKczFV9P4++j4PH8rZ2lW5E55Q=;
	h=To:Subject:From:Date:From;
	b=Mwv2f3KYTzLDWOKzL22z2aU+aOjCbKJ3p/sm2HHNQPFRjZBrc30rEEFcvkLj93qFF
	 hvLDKE8yeT/yekjcnbADlC7ZtP9wV8YNhrkMvSEeHAeEkBYG78RD9quJThQyjHCvY+
	 8AtDd5AYtMmCPuDdCa8YQnBw1ThTnylKWuX76EltAuxPrUo2O8ShlX6aPoXKaT/oHj
	 OyebKpGrgQwNIzZnemQT2uqRVq0tNgUzihPBj0INR+l/OMD46ADMvbKrYm9lGVW/5f
	 GPF5HtcKY2njw5L1Pnvmun/aL5G2YmxPPOI9OLHQ95WZd51MrLAJg3k1A9irSIDvtj
	 Ip/rT3aSrgjVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68212C25B42
	for <ddprobe@lists.linux.dev>; Sat, 21 Oct 2023 16:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169790449641.21960.14767079448346579777.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 379e91c2702a686f55149eee75aced640e89dff253a9bf102915a6a4561352a5
Date: Sat, 21 Oct 2023 16:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697904496
