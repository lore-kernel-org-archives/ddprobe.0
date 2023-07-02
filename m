Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E5FB20FE
	for <ddprobe@lists.linux.dev>; Sun,  2 Jul 2023 13:34:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC1E9C433C8
	for <ddprobe@lists.linux.dev>; Sun,  2 Jul 2023 13:34:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688304848;
	bh=c/7BqkmWDlhO9QIR8+gH7EtIyxLwhKu2ViKPRY5kNto=;
	h=To:Subject:From:Date:From;
	b=G68a6l7qmwIqZiQdmT5ccz8AgO/4VNQyzKVRa/ABLAiLeky+Uawt17JxA4BKDaupv
	 t3yO+705agMm8XmiCR2F+njoSFuU/NOMStAKuIR8hP0U3ZzLnHSWlXJF1Y8R35cG3U
	 ppdxcfXtOOMJF0MdLsBxnzkBTbqIppWSZ4sZ3EnaCNjQqSXYLBa3OidieD6BbFq0+h
	 TflcrgqAERgnbFPwNK1FozkAkFWbcJHPwnM2ewvWBc0FOsz7bMr+SlV+1ma3Z+DUnZ
	 NdkpnLeG2Ln0HGU6kyV35P86sfbpy6MdLNlfJN4lA04DDdK+VJM8X7QM4rLorZff5r
	 mBTX8Nz3cX0MA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B944FEB64D9
	for <ddprobe@lists.linux.dev>; Sun,  2 Jul 2023 13:34:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168830484871.21178.1092115135263341556.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 508b9cec6e627fc87709b3adb8dbbe73845ca14d3828ed3bcee39bd2369cc5e0
Date: Sun, 02 Jul 2023 13:34:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688304848
