Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BADFC33CD
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 16:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74D54C433C1
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 16:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665505853;
	bh=zXQ2LDE4MGChJGIuIWXaQWzxwBsSNNb5fgwgT9MLqnE=;
	h=To:Subject:From:Date:From;
	b=fo/47mcwZytUpxAJLCYctrJ4Jn5CjKrg0irzKoFL9S5SCx6MP4j1vGarDF5Vw1zgH
	 I7fvaS6XBLb+iiMqzvfLdOmQRk5oqLoiCfYrKc1AqOz9YqOzp/Ixhk6iRGX8nri+fV
	 z+KqdcIkJ77wMpy0eKGEAjKRUdsw4FKDSNbAy0QEPFKXpNkQr5TTxfK86LIaHFum/L
	 zDMAb1WyyqOxG7oXMbkxoj2/RyzU2y4l0pyhVbcoVXP2vtzvk6PJxPAxSTlzHIkKY6
	 C8YaXAlmNFaFlcqgHLjbvK9KINV4R0kzVbZgYxvihLXBOIKHl31gBa0yYGpDTdraUc
	 lHzCmtuhwYOhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59B24C433FE
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 16:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166550585336.24800.7173511129108686949.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9eb3b915ff78f927637fe6b9dc8477bf29827e482322244a4220d8a43ce891f
Date: Tue, 11 Oct 2022 16:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665505853
