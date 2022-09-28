Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE7B1ED5
	for <ddprobe@lists.linux.dev>; Wed, 28 Sep 2022 12:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B9C5C433C1
	for <ddprobe@lists.linux.dev>; Wed, 28 Sep 2022 12:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664369453;
	bh=i2AdPClCuGFuE9EfK2yadTSBBjof/Mamr3jLjMyzvV0=;
	h=To:Subject:From:Date:From;
	b=HA2PkO2clr4/4r98jhPbPQdnCRDaAAIS+d/qcjrmKHcFYL2KpCLvzAU+USF7Mljej
	 i117e/IAjKS6yKEcj8n4O91ZWd4IFZvz9cCOaopwxA+hKufd89e9BWFlRaIndzuPk+
	 NwKkIacoQfZnI/5hI4j7MxZMyWz0ApGGw82zSaIdRzRJ3MsWcoYj/WSDjtcL90GHCN
	 DUGng2YUPmtkPqqU5aA9/rBNb2AccMD2I3sXYVJQf64zYDlP9CwTjwUGPFtnFUy3/u
	 I4n6fjv9vpza1zNqNuLwBEGU09/qyRUSbEBgaYss0EES8svPQBIUKm7nCr6ycUYhCF
	 PknbTC4MzwVBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51485C04A95
	for <ddprobe@lists.linux.dev>; Wed, 28 Sep 2022 12:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166436945332.2693.12014964844300522766.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d2c2e33dfffde71840403108b3fa89550b4707172d2472c1560a5511cb7e0b4
Date: Wed, 28 Sep 2022 12:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664369453
