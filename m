Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47FA210FA
	for <ddprobe@lists.linux.dev>; Fri, 29 Sep 2023 01:06:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4F42C433CA
	for <ddprobe@lists.linux.dev>; Fri, 29 Sep 2023 01:06:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695949568;
	bh=CV9ocDO8yWyJhU6lInmsx+5FN1vpjhn12Qg9UgMGljM=;
	h=To:Subject:From:Date:From;
	b=QPh4IVu/JQfGN06ayG3QUAyUUkvkzcB/9MgF1Ma6IyUjP5B9G7U4eOMeDJ809JN5y
	 9/eHqlCDlroaQrqgqCpiBSq5EUVzO76HifE1P6KDBUpbWsDQeTS7Re1Sa1ZExc6J0q
	 A3hKzHFQBw+yui2ISDJu/hZmnq21lR+W4geMqbt2JyLAUt5/QVjq0xIwCy0eBu+mKl
	 Treh5oofxFIrSmeAkYQOnUAGRZToD37MJDqC37dkqjSSyBxCOMmmpYKjEdq5d2d/kR
	 stZim0DXxaOTs8wXEkggs21zZTCOLMsmdsZPcnri2l7gYuAG0+qwXS4r7vTqM3wAQS
	 TvmeM0/qsx0jA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6334E743D3
	for <ddprobe@lists.linux.dev>; Fri, 29 Sep 2023 01:06:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169594956867.19879.11090719012017007095.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9753706a6ea7b06dc31edb01ee6b8811fedd46bccd26079bec71d089eb35d4ec
Date: Fri, 29 Sep 2023 01:06:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695949568
