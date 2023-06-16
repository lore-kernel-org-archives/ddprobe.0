Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68BC1653
	for <ddprobe@lists.linux.dev>; Fri, 16 Jun 2023 12:49:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC577C433C8
	for <ddprobe@lists.linux.dev>; Fri, 16 Jun 2023 12:49:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686919748;
	bh=wfnzKmjwDZkmo26uPLkxd+cZw5izJFHqRV6VcPvMPVs=;
	h=To:Subject:From:Date:From;
	b=UBeo1n9jpbFyS1CIGxyN8gVAX6xfaWUwqWotTbB9fxWXCQMLdyTFhZ8hbm8C646Wn
	 e410yNE8UoRxAQRb1pRDwkBVK/PvJ/ItYFLDAY79vD1a2VlqnygabbYJuOs3ZK88JN
	 0xNqA3s/dfbecwq5pEbjbCS+InYusvy5m9NcjIxYcIHNTDlgiw30iYlf5K0HnxmFt8
	 zAYEFmo7IeBa5fkFmdVm7XoSfIsuZhM89rgpUohzNCofyxlPy7KTvgBR9SbpwuGg4/
	 DhWoA19A+u6pve35VOy4bIDY0RcsGSTYgMbe+gcZ2YKCN5p+O46Dn+oFMr4hvNjP6h
	 inrze4MvwgbPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4F0FEB64D7
	for <ddprobe@lists.linux.dev>; Fri, 16 Jun 2023 12:49:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168691974866.26182.7824380003443760348.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4849755543ace86bcce2c7de4b4de0adbded9f0fdfa3128e1cfdc113678affa0
Date: Fri, 16 Jun 2023 12:49:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686919748
