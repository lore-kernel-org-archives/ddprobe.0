Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B934E17D1
	for <ddprobe@lists.linux.dev>; Tue,  6 Sep 2022 14:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 63340C433C1
	for <ddprobe@lists.linux.dev>; Tue,  6 Sep 2022 14:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662474653;
	bh=ySOs+4KyDO973VSpbtLmjv356Cba7vFwrCGexGYwanA=;
	h=To:Subject:From:Date:From;
	b=bvn/qSTcQOq3QK2C+oZD+JHBGLoeYRngf9/RXRwEjpuV2ifeSfzBTkxjFws6Mp4sG
	 35INDGwL9bDMGU37zbT6jLG3qpFzHK+jnOOxsCZ1wfiDRLoNgscntEUHL0JtrkfdCK
	 F42Y5Oc84tTCppJIwu4wxYrYoNgL0AmCLrTJ0QFGSL3hoBny7T6txw9y4pAvyDn51E
	 FaNcHgFsjYkku7da1xSkgohYWoXb2DS4aYSNErgZElXo+l69Vb+xL0dwJk1VXZDJO8
	 WieifLJeHokyMGo6gUmyj8wopL1MZVHJaG9W/iRPI8T96HDb8yAJm5uergQL/OsJ/o
	 oT3qJLq+7hAOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5096AECAAA1
	for <ddprobe@lists.linux.dev>; Tue,  6 Sep 2022 14:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166247465332.2766.12801516268735037875.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60dc98c8f1bafa54c4f5f6d8aeddcdb35fd89b58b4b5a8b1e9fa08636d7c47e1
Date: Tue, 06 Sep 2022 14:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662474653
