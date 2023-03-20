Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 375E77C
	for <ddprobe@lists.linux.dev>; Mon, 20 Mar 2023 17:47:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD2EBC433EF
	for <ddprobe@lists.linux.dev>; Mon, 20 Mar 2023 17:47:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679334425;
	bh=BjBC1jwMm4t4cfLurpm2mzQlIh5jzXlj7pmU6Ku1bjw=;
	h=To:Subject:From:Date:From;
	b=MRYIN6cpwsN/8fqV0sjYkzl7fNe338kHn5oFDp09E1VZOCqlpQ52lgUjJkwlsY+y9
	 TwMtixi2GaeNXbI+hDm0a8suIoqG0Deb7x5Dgh0BZXQ9rVg/dQ5kyfSJEmNWNCscvx
	 8yAmCfsdivx5AsZdatOQ4R6GECEnQVLCukhlzdWbazLN9idolLj2cK9pZB1y4iMpcv
	 hcg18CaEP+aTF8yfNv68dIWpDE3EccSavrip8Ska7lQd/oyZ1uvZpYAZWqIau3BTDC
	 tDRdV/9ib9ta6+RqZFokNwqw+niYym4W1ASiyEZqSfy4KetML4E6YJ9RztIBAPCtlC
	 g1I37/oJrScSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA7D4C7618A
	for <ddprobe@lists.linux.dev>; Mon, 20 Mar 2023 17:47:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167933442575.32018.10687752723046714055.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46237b85b2b702d5b004f5f3a4871ff73e2ca2e50fbb050e75d576259632b275
Date: Mon, 20 Mar 2023 17:47:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679334425
