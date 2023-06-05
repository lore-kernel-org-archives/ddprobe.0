Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C716F9E7
	for <ddprobe@lists.linux.dev>; Mon,  5 Jun 2023 08:09:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF6BCC433EF
	for <ddprobe@lists.linux.dev>; Mon,  5 Jun 2023 08:09:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685952545;
	bh=0S/m5Uncnq6z+jMXjXZMIL8wtqKED/2WbXYosH4qNCA=;
	h=To:Subject:From:Date:From;
	b=nY7n5i2gI8xQxWdpKOsfpRH1PXw6+j52NL+XRtEjSgm8YmIWmtamVNQ9oPhw344Kf
	 JBXN+EY1K7XCQWWm8/vtmJdz+Pkl3NBpVBCCGmyRFfJTEH0ksBOLMro4ZtaTUlxweO
	 jsF4qrBDLfp7eMoXjeLhGMeJcCEbkO0Ud/J4Rmci/UpEy7IaSfljk6TGSKzHxA++Pq
	 9ge2Vm29XtduyVP3SMFAmgjJtjhGrVUU/V7VfT86G4UMui55g/6zJbStWEV1iqJTHb
	 bW5ZFfmrWL+4BXioV7ehiY1UZAJbAULKuBMmc68Ug1/8KAIU4eRTxsa/ENh7W0T7Kf
	 EvTewSRK+JQwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5444C7EE24
	for <ddprobe@lists.linux.dev>; Mon,  5 Jun 2023 08:09:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168595254572.4752.12210304783826306451.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 630163c33ea21e5016aec4f10d0a1b0b4b6e16725b61abfa45069d9b623713bb
Date: Mon, 05 Jun 2023 08:09:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685952545
