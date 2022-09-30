Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5B2F1363
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 01:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 748D9C433D6
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 01:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664501453;
	bh=WT7foBAgfj9g0Y+lXNvN3v/AWbr7JLIAESqDrohmFww=;
	h=To:Subject:From:Date:From;
	b=brZrSBefbjaMHm+hdp316ZVmvLrzGIs/a1RjytAlNYEJ0DoFyr65laXVP6sfogTOI
	 iNcqqh+7ahOlNi9K3jw/n94zYyc1xPRtvqMyFLY66vH7mucYC1LVBt/TNPFP0G98ai
	 +wHzCzruozzch0i6HA44pxpfZKt/kLg2wdyQRfPi9OwGKU+H3STM8OcXMlBRDmNvXA
	 iWM/bhfJprX+QTOk2FBxLzfm+QU9t5Q/scLiELm07FwWXxgQ6HzOaiqRHKL0buJKs+
	 qCfJTV8VvRkEJtVHSjHwKEoP1Yp1ppw4pPie3rsicmUh1uu/lZtlZxuhqs1/KJjaTJ
	 PPPsg//fAyViA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 590D5C433FE
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 01:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166450145335.7153.6716435684337241330.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec70921a90d76f8f475d7af0419e5d85d7e13da6cb241295f8ffc578387c31e6
Date: Fri, 30 Sep 2022 01:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664501453
