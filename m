Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D553D15AD
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 04:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 717BFC433D6
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 04:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663907453;
	bh=/G3K6fr2jbR5Ol3ebFloetIqXcEwyUhq6Y4YkYKS9WM=;
	h=To:Subject:From:Date:From;
	b=ROV9FRPjVENpSabmcwL8guCpgQ6RbJzZTpnbtuuO222dNFC8Oct2FMaVajZKW517H
	 l9nO5kqOKOb9muz/OP+fbOD9cNQ33pThqZQ8aNZUnDxKCgCOZus15CKNXhz0p/f4WL
	 txvrwokP0DhGtTgQX4DHrXWuIaal0nvGud8CoWRRe+tUSfVQCCOUpkvayns4oR4Sqh
	 BQp2dfwg0iC1IIMffqrz9jwFF48kIcKKICkW5/iaS/AnA4e621RYL39q4P8Rpjv/og
	 kNqSRyGaGT6oaoCP8qwbp++R1F5sDlkqiv7qjRSiHFqnmPfoKe7tIiJXfBAT9pnhQs
	 6hxJP/G+wReag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55AD0C6FA82
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 04:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166390745332.13426.16517837131345183609.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 652d2dfc09c64d2a0d5b60693eedf425b44c1b87f5f5391f12df4593a0c767b0
Date: Fri, 23 Sep 2022 04:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663907453
