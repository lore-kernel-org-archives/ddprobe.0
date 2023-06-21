Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69DC1D53F
	for <ddprobe@lists.linux.dev>; Wed, 21 Jun 2023 11:13:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EE563C433C8
	for <ddprobe@lists.linux.dev>; Wed, 21 Jun 2023 11:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687345989;
	bh=XIe29Qt3A5PQWmwHr7NClf1M97lEVcFHvkIIfg7Lg7E=;
	h=To:Subject:From:Date:From;
	b=FEm50QAJhGUv7lDVTySmIWnt6QsogHN1LBX92qOj5miOKbEM06so3LPbr0oZXBnJG
	 Zghfz2/Cd4ZQv9Ui3tMBCC3N9o3TSKhytThwrAiPjUGK0kphvPD6lX71lD+nqcJDrr
	 F17937sqcEjzxofzD/eYV+9LLVZa45mpNn6RMYMDbuRLwr6Azkx1VIEtr8NN1jjabV
	 Ws95kvU+ryuKfTay78Gc5Y7ghSTBSTBde3rjYz/QrnfklBmP3P1/oX+Ute/lRJYegC
	 2OHgAmbAMG+/ch2E/Q5BZwV9pmB2Pk31LIciNAkWe6mrTK78Pw9dM3whmsICC2hk4d
	 0Vos+esk8LfBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D3198EB64D8
	for <ddprobe@lists.linux.dev>; Wed, 21 Jun 2023 11:13:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168734598885.32528.17021175184301877482.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 214535b599320c1c74550efab937d5a84c884269ade55cb0a35903227a740497
Date: Wed, 21 Jun 2023 11:13:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687345988
