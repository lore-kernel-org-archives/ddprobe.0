Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E49E1548E
	for <ddprobe@lists.linux.dev>; Mon,  5 Jun 2023 13:59:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5203C433D2
	for <ddprobe@lists.linux.dev>; Mon,  5 Jun 2023 13:59:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685973545;
	bh=VKWIMQQjDzZzn82HqenEDvNWXgGe46+I2hw8Qc4wLXc=;
	h=To:Subject:From:Date:From;
	b=HuYcJHda8ywwZfnY+DUj/gTk2P1XuCFaPg2fjkxd99YeRiXkCNn/DRlAuEptpD3CS
	 RnjK93G7gJ93bXcZg9RHBGNCS5DIxAH27S3DaB91ycrM09lS0XaKp4KfdU7IgYV9Oo
	 hT2SW9B7JK7CMjXYKz/lPe5cW83hca8vq4xxRsid2XAxX8VtrzX1dTmP9tt3C28ze4
	 Pp+79U8Uv4KwmeNM3XORYWujagI9xfZGNibTkB1IO1xiVFS2H0uMNLzocAciBDoUAL
	 /JYOI7LQ2TO+6fNNq8Yl2rO+amfIErk2Mc6xQVi0NMezfpGvRly8H6xuHqx26eRq82
	 C+RYVcVBfOq1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7AEDC77B73
	for <ddprobe@lists.linux.dev>; Mon,  5 Jun 2023 13:59:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168597354574.15183.607685787420983826.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b7f8ef4da6f96cb4af1c2c6bd0e158f3be2c89924421b3ded9e165d631ecae0
Date: Mon, 05 Jun 2023 13:59:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685973545
