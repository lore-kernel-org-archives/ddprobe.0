Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 033918F68
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 23:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2F7BC433EF
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 23:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673565687;
	bh=oDXBS9ZICetbo7l2IHWh9mZejtY7kAoph1EGqdxz7x4=;
	h=To:Subject:From:Date:From;
	b=mIm1SyvdGCqHaObhxwDtrditKbkzgQ5H7bcf1pXKFQ5A9zk9SOXkL1rSu1NBYoh6+
	 2VqsvWDwxnbrgApE6cB075SKWWaX5e7KZ1lV0s8FU3sB+K6j+1ZnnMVfGHecrLnrdW
	 2kYAoSameWuywx/tgRxTQvly8KI/5ZfrRfintlb+5IuwTGwXzu28e7NA6bSAK0xLMz
	 xipmn4tyzdiAikawVEkp/sKQo+6SJNX7JqBNiEfi0h5hMSomvBYoQPB5cbVeNON0p0
	 UXdRNXbjUGaxg6u4ss9frdSyiqlB4iT0h91vuzKizp2JLDn9DPq5f5zSStwIbRT93j
	 uMP/w2QWdy3Jw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 868DCC54EBD
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 23:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167356568752.15054.11721236247543030501.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 816298b3b339d26f299a2a5bb8e585641370977d25251decf0415fe37ed80b8e
Date: Thu, 12 Jan 2023 23:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673565687
