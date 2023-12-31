Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1850E4418
	for <ddprobe@lists.linux.dev>; Sun, 31 Dec 2023 12:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="itggQl9v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 984D7C433C8
	for <ddprobe@lists.linux.dev>; Sun, 31 Dec 2023 12:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704025696;
	bh=gYKqK1sM3Rix775glakUg+2hCb1cvREDRTOQn9Ucq8Q=;
	h=To:Subject:From:Date:From;
	b=itggQl9vVdw0xKt8EbZL4AJx7fQPFcemXJJIwh1vTqS+T1jFV6C0EHFkAqEnrcxdY
	 ONPjRSr4VTr7lVcuBGB7aWQt4NWiuVKOHo6mHoyRItmrTqdDRC3XenrpbyudHAAqIt
	 j6beotw6t+3J1hmrVL21ABMdzssYr0IT8xdIUm1pbQSjJC+WU2Eg+8DFxkerNUb2Ul
	 twsMRkG6PNzeuz4F4jp/tzw6FhZAJnYsWkRdgJcIwv0TPb2V/jH8qIKhQls06nSAOQ
	 dlQgU6lymlgBKZ2AbeyIOPj4oBNV8exOKpIHkJoSl+AfyuaqgbTeuAIjkKMBfMKvcM
	 Lpmqo1zfVMFDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 707D5C3DA6E
	for <ddprobe@lists.linux.dev>; Sun, 31 Dec 2023 12:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170402569641.15725.10026062996619545056.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ab9ed2c062b8c3d708ceca2f6dbc334c977f7d80a973c79db42a2141683d55a
Date: Sun, 31 Dec 2023 12:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704025696
