Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EEB847B
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 02:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 86147C433EF
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 02:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671935487;
	bh=6J9cPOZEdmT/lKCHptWq5hGYwMiGxi+TulrG7/X5xdY=;
	h=To:Subject:From:Date:From;
	b=pI30AF7OSjKJ6VDZBluXpvR3ZIxgu04z9r3PxRyNZQfACnK2u8PTHC/LBCgHPxNMg
	 9f+rhhv52IH/Vniw8Fqh9nI5kRmfdGNlH7WwcAGMI+ZA9TJUFTXY0wwgSchygoMgz/
	 mBZRf+OJUqfei/hw+mhp4ZBCnKduaSfwKkYN/b/bc3V+6za3C5+QXG0PWk1edt2Idu
	 ZDXjuRk1fPj3njVfaNAM8Ii8heZAzobc1LKnSyQ7gfDmkP6Q0oG1XXo6R13igjr6oV
	 KwNHd7moaGTVlibTn2Hr/vqpPOdPCQDSJ1ORBUITPTDrjlOxxiwB4jim/qpjwuyAVx
	 i/dj7k4ZPsROQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A3D3C4332F
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 02:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167193548740.20769.9918644894498444554.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51bf4e36205c210412212308c85a8f87ad120002a9c13edc04810495b084ceb6
Date: Sun, 25 Dec 2022 02:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671935487
