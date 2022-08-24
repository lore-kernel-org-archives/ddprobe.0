Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C24417B
	for <ddprobe@lists.linux.dev>; Wed, 24 Aug 2022 20:40:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 722FAC433D6
	for <ddprobe@lists.linux.dev>; Wed, 24 Aug 2022 20:40:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661373652;
	bh=ytamRBz8Nc8+PoGugQjh0rJTYZcRbSTcFz/68AA+UuQ=;
	h=To:Subject:From:Date:From;
	b=PBjpZP/w4c7WKICCMMVZmbxysQ2yM+14J+Bq7uQsH+wfmdbQiPct1RKLjmOMZ14ng
	 IqynctE1HZFx0B7sQZiW1cSITdaUmQTsAGa6Kp2UYvFObSqI6+3nmUljyzrDT/n2sd
	 MDz4lN5zw6LjTPFLZ28ti7sX6dBkqL70UraarlcZil/ex7c3LxZnJWQ1Qulf2rV8ov
	 eKihq3xeNXM86y6vT1tg1Ycmz9YraJUAeamn05UjFEgE20U8gjP7Ce1EUWxn1Gfv6P
	 hO8C1kbkFMfxwdNbEJ9RBM1Dwaq2zXOwCbi/xFweyijcdC5FEMZEvQ5hZcE3Wz8lCz
	 tYJIzVgiOkw/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 561AFC04AA5
	for <ddprobe@lists.linux.dev>; Wed, 24 Aug 2022 20:40:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166137365234.16894.9115768712689771201.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96e07f654a393b964497a7a76659151347065fa672e5e21bda44b83b9f0abb21
Date: Wed, 24 Aug 2022 20:40:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661373652
