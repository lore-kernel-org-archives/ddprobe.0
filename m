Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0689410A1E
	for <ddprobe@lists.linux.dev>; Tue, 14 Nov 2023 05:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PYKmXS2i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8DD33C433C8
	for <ddprobe@lists.linux.dev>; Tue, 14 Nov 2023 05:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699939696;
	bh=ldsKqBz5nv3egM5iJ95xKbpcQzpMlkMH4/pvNY4HTNk=;
	h=To:Subject:From:Date:From;
	b=PYKmXS2i2DZMMWWUIGxFPXzTRG9+SipjwRMyD1YNXYSCH0nFVSBGkGmkydt8PsvuB
	 hVEM8xjclUMcE3gksGHUPCDNuA9PFWEvriUru4990CpXRUWC86pxIzS9Np3Sktq1gp
	 NrRL3SsiSR2mIlDhGJNeUlO+LZOARYbibSnB5j/rc6rorM958Lq57m2UCcJ4wodT26
	 idla/GqK4zrHlShLxjE12x2Z3FSqE2nj9QlkT5LhfXGHhWik6M6M8ul4mMm/QS3L8C
	 RjuiGeO0LmnBL4Tyb44c2GpLoDXNOy3/rwZvY1SH+j9AimsLo13pVtmi1soAlNKusR
	 Gg63RKCJyzCjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 70036C4332F
	for <ddprobe@lists.linux.dev>; Tue, 14 Nov 2023 05:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169993969644.6155.1091520786442614790.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7930c5bdafa07605b1644c27cf39c01ee2c1178ea588c3a7e23284cc95ce1dcc
Date: Tue, 14 Nov 2023 05:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699939696
