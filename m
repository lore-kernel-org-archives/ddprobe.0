Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9E767E
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 00:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75EFEC433C1
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 00:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665276653;
	bh=aLE9tI33o7iob+k6mEvNGJZcO1A7iEhw/BAdnwe7jls=;
	h=To:Subject:From:Date:From;
	b=aSJfxEnqHH/SbOK2ofFL673j+v3q4tM32ZMIUTlbDO4koXKFQCFyNMygbUEXPp5qu
	 NoiEIYZYKqdZShc5joGqHUnVQr5263e3FJUY0vmVe7HivvV2OiSPybfVI+JyCF4d7+
	 URUPKybmRfZsVHsv3mxFFE2vB0jnDx8u3LbXBsjaSZIZC/fWn5MUkaXj4MMAckCpzh
	 Aq08WUa8d/GBGVA90iF/jc0ryftfgovJIRIdZhX/fG62AW8cCz2OR/tRC+UKRBVGeV
	 +4ncw7s632aCyrGPh0FtDbDV611P2vX/+NJlVZI3cyS+FNw2Zdu56jbG00GGi1FVB6
	 gzWqnEl3lVhBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 536AAC433FE
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 00:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166527665332.32644.1942711439708595627.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2561b14a947883da9ec67faff8e69214795695274d4e372d4d98fab590e435e1
Date: Sun, 09 Oct 2022 00:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665276653
