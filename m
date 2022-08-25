Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0F313D72
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 19:50:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73CCBC433C1
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 19:50:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661457052;
	bh=KofrZpUMmSrVQUzkJSGj3B9/Swv6C8fOOG6+ArhAKtQ=;
	h=To:Subject:From:Date:From;
	b=gpKSROIMFkh8eXWc/GePWw99TwrRw59AkIY3b/xhxm4h0Fl7yFanEdaYhxMDEpg9T
	 CjYJMn3DF02KVkiA33F+ZKScK3W0FRMgzy0qKaey3+Ojy/hCM5i9OsUDOFYQXf/8FS
	 NspyRh54gH1Kr5Bmk9/BmG0BI5ovXdbi/jbhofbJ3aVu6s39VWxFZoFMd5m8aIGD3m
	 zC2ipsdP4VUgUUsaurpFPCENWBIt6Lv4WdfJ5KlSFcMv64KtlYVlXh0hMUsjNlI5QC
	 qoQFYYBuU50CWRV5Eb9IUU6WHo9TtDG4WvFv3QdcR84RXf1gwquFSISGblDKCJiDjk
	 XYoN2vmIMT7cw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5681CECAA27
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 19:50:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166145705234.11086.2549550835910433289.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ba87c34d7b826338a32525d376befde2ec29b564ef083e4dce914c1643fabd3
Date: Thu, 25 Aug 2022 19:50:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661457052
