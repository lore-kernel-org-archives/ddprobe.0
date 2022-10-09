Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B200D7E
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 11:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 64D87C433D6
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 11:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665315653;
	bh=zyMFQrlV3QpVPYdU3+6wkc4qdGB1MvnfkPJxlW6ORXQ=;
	h=To:Subject:From:Date:From;
	b=TsKgLO5ODmtLX1Ycq4lo0e/d2hp8RHnTvucSWbcB7PfFdN8d5Ll0/cjw6oeQ7LKKv
	 ipZ/Tx2INFF3v9cdHRYndqHQG0JrHvD9sZn4TDUjn6u06yDd2a/o+pNxZ7sSmM0Msk
	 QJvI3nUu1SUlnncAsBeYr1zy3Wczk7dD2HXvejbSwcOHD16Mkxszy95uCW0e3qCICW
	 J2/sHxOc+i2Xzo+W1mAyFEfLvPuwciCvdx1cJmuCn/IywEjoXFtHgxtnOUcgcM6oqK
	 T5DmkZP+TuvXnk40VuRwvtftYeeV17HiDgSJeTWbmmdUS2wf3VdmvBnf+swNMjciZo
	 IHEr2CjXZtoBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4EC57C433FE
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 11:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166531565331.31465.1424489186410677168.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d941025135bf84f746a8534a149e82bc4ba5ecd29d4153bb8a827eafc5a5600f
Date: Sun, 09 Oct 2022 11:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665315653
