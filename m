Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B5F0417C1
	for <ddprobe@lists.linux.dev>; Mon,  3 Oct 2022 11:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 65933C433C1
	for <ddprobe@lists.linux.dev>; Mon,  3 Oct 2022 11:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664797253;
	bh=0NbZeCCNUftC9c4ST9pPXEvlM0yGhpcLSrBoY+0mgG4=;
	h=To:Subject:From:Date:From;
	b=Xz4vxRBWOkf+PUdzDNZiBbmC3kaQFqmBTDo5oXrlfJ6Xfviij9G+x1ZdNTEWx47F6
	 raNqk92D7ICA3liOxvwMkQAaWs656KKS6qlxMpmdGw2lrOvyseBa/u89r6IkWbc5FR
	 vvrFagtBQUXIK7ujB4aSNvExDZECVSvVjTw4HgsXW9WUNV/LpvgfRwB+AlE0/PRfSF
	 H2nPgH2q7ubuaLhX+bqB/K27nmrGKTaH/2RbiaEHemHPinaco5Fb4MzTF9rzmdDxfk
	 7kIjf1jOQowQLF/apSgIBVpaF6SssK+oPCa5Kd09ekBDQveuPWBv5IfgX0qFWJu7IW
	 aObSIQ7lQEvjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4EAA2C433F5
	for <ddprobe@lists.linux.dev>; Mon,  3 Oct 2022 11:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166479725331.13562.13332139637773180782.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02b2ab6930899a993825cb024e5c253a0f0595e5f0e30d425b2d05f9f9fda259
Date: Mon, 03 Oct 2022 11:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664797253
