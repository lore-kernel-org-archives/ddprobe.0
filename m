Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 678941FCE
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 10:37:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D580EC433C8
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 10:37:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688899028;
	bh=lG8faw0sZk+kmMWOe366MntOoALFDLSOcz4T38SinAc=;
	h=To:Subject:From:Date:From;
	b=Z04fSiAfbLjN+RusjkblGbGtac7Z/WHZP95p3M9Vov2HaV66OBoknVAoACzEJh7YM
	 y/wh9kpG/xSppcwFPDJimKbBFRcOWZCmZy0fAH+jFpCjdsw6GM6LBQc9FTUMFtgdnY
	 g6twNS8VWbhDFZI3u4r6dDWupHsDWY5uS2R5D0N21FbZ5nPdEl0vz6evUHQbrWrKSR
	 xYmHwyTpueL0TaHqQyrePIOKJeD0DRAdaabcTJa6Lk/W8rfSp305kkvO+t9Bqf6Dnf
	 HyUsReNWGmUPZUkD/u1FN47FhRFz5Eo652YV+bBIttxKdYBC5kgQSag4JlHY3pv9RP
	 4k6jK1cdbK8bQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3B87EB64DC
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 10:37:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168889902869.29573.10431586027104036484.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3f269cfa463c8f13a08cd0940711ea8e9f145dc9620ec0ca597067839054f44
Date: Sun, 09 Jul 2023 10:37:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688899028
