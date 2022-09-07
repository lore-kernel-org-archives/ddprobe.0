Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCF025CA6
	for <ddprobe@lists.linux.dev>; Wed,  7 Sep 2022 15:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77595C433C1
	for <ddprobe@lists.linux.dev>; Wed,  7 Sep 2022 15:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662563453;
	bh=L7wEyo78s2NaX4/f57XvJySgIOO6WncJH1nO+7TgmKI=;
	h=To:Subject:From:Date:From;
	b=tGuAmhnUwcNOjPlpFe6givAQVu6kx2IYtnrRzJ/HVN4+M+TgiS2/S+JcuDMz7D0/N
	 /JhykS18xocjnNPteetDZQTWphTNICr5D+nn2EcNdYL56FTOVWexAsDRqGIMTzN+fQ
	 zw84Ehw7XY+PzH9QPVnzDhqKhF1SJ1RUI13u+ARdabYKfo/SoWOQ4BSloeA0DO1Vh6
	 flPaBRRFA8vzFVMNtL11l2/bQk42Lr+cTnoToXj+lDCiktjthXg3uBV3A3PFMEG/b9
	 K/X4mH4Yr1wLmRxWducFLGjN3mq0AmRQpKn4U81rIZ+6qDfdsBT6cKZrnGOqPFQGvQ
	 7NIYKPbCi+ZAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 508EAC38145
	for <ddprobe@lists.linux.dev>; Wed,  7 Sep 2022 15:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166256345331.21252.4988485585561685154.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e318baa33e121dfcc592049960ad96e472662b10a05556a678afc4970a15697b
Date: Wed, 07 Sep 2022 15:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662563453
