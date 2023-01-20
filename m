Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ED46B434
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 23:42:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEE35C433EF
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 23:42:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674258125;
	bh=rqHPkSwhtdKQb5FFdp+0cpzwYnNVCM2VwplhFnzUkj4=;
	h=To:Subject:From:Date:From;
	b=m2LAJvqo+YDT/MeNaaHnsXaSv5c71ljo/63NABaEFTlRMPG85JQRYY7Q1MFjmEQEV
	 0HUPnrlVZ5SRNEIycta2qxD49tJ4ttCDM+uy+/Hg4cfXN+cy0lUEGYsrTquOvHcwBZ
	 K23gHLDwTvGZaqtsYZimWOq/eQCBnsE53bWSZad0PF20e4u1p/ad9IaoAUh0sZfPaz
	 veCqVPdORG3+UgLUEMI44E0YLSc5l5mcELaiFURp+RrxBQ+iRngatyb3hbrymKlTF4
	 52UyRlAdggON2tAFpyUXfr/gpL+z1Y1voKt+lsm1ONUW3DFmjlfDgPPwMJMNk+Qlno
	 RDHviFZXwI6fQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C252DC05027
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 23:42:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167425812578.13101.16756627173123483972.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c311159561c23743bfddb20a1aa6d3e99f3343793efdc4469b4921abc769b6d
Date: Fri, 20 Jan 2023 23:42:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674258125
