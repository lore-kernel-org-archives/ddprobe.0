Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D681E371
	for <ddprobe@lists.linux.dev>; Wed,  5 Oct 2022 04:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7FB3AC433C1
	for <ddprobe@lists.linux.dev>; Wed,  5 Oct 2022 04:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664942453;
	bh=w5UfidY/NZytFEwDRSNghlNJzcfyEffe2T7sCBWVEP4=;
	h=To:Subject:From:Date:From;
	b=fDGxc9lZSipzZPgV7o8n5woCmrjZzJAJ1TbGDv5nLvEGHOi5lRyfQAwOklu4fMy5k
	 BlHPXdfN5vMYo3ECvTp3TDJE2iK1IDsF3UBt9jHT2sui/vzocqOy2V3I36omfEgPP2
	 +lQMFDXuiOsO8nw+abgzaxqN5Fyw7uxr4+BGq9bebWK+ncW4XAPZYtpzpsEWW4Qd0X
	 pTQc7PwNYbRDwP63YXfzh8H7V6mDdErWgXjyQT8FDZgfyfyGgqTnoONkDZNDLtV9SI
	 BvWE1rWPN0l65N2eRKt93nGDvduIYVtcA9js/cDxRpK+mHyH8+NHWH5hg6elkV06Qm
	 Vg2qcYPx9/yFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 636DFC433FE
	for <ddprobe@lists.linux.dev>; Wed,  5 Oct 2022 04:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166494245337.25984.1393138889507523175.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3df1d937ba46a279e9d85d01fd16b0560e5cdd25f0a3b1b762be1b4dd3c5f2e
Date: Wed, 05 Oct 2022 04:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664942453
