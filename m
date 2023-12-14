Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 162546C6EA
	for <ddprobe@lists.linux.dev>; Thu, 14 Dec 2023 23:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z+jtiGPR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 762AAC433C7
	for <ddprobe@lists.linux.dev>; Thu, 14 Dec 2023 23:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702597096;
	bh=j0z/61g0Aiwkkq47p40C5dIMFMdb0H8aTTnk2z8b0OU=;
	h=To:Subject:From:Date:From;
	b=Z+jtiGPRg1PB8mMnIktv5ktGmQE2l8mco7XFG3Wdu5bFvMEvkFnzG9PpzZP76Crab
	 p9AgL8ABEGz1/DFMkXpwCMKPDAGrP2GHAHQwsy6gcw6kwii1Fqtcyifb3ReFusrnaz
	 vAOBflUDoJ8Ix+VZNETXYsyKTPXYAuJXgM9s530DtszOvfasakdVqD+O8d/jgAjcU8
	 Tnz9mqYE4ZlbySvw4fVblmRjFkZQz8BbBNcFTg5ZYC8fb2m/qcAeaUXDDtEW/Ak03E
	 UST2bNuDuR5ipWlVluia2U5xI1Z8E8N1ofYrZ5lDeudJr/HQfsB4G9bTdNyMCq3MqV
	 d+mDqvShq3L6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 600B0C4332F
	for <ddprobe@lists.linux.dev>; Thu, 14 Dec 2023 23:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170259709638.16949.10499726647665609469.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 222d374b44b3a9a3debdcf1effdcbd9439f9e2c4d46ca5cc1043204240de4f68
Date: Thu, 14 Dec 2023 23:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702597096
