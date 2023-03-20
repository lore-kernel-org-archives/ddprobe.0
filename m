Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B4814C7D
	for <ddprobe@lists.linux.dev>; Mon, 20 Mar 2023 19:07:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0E9EC433D2
	for <ddprobe@lists.linux.dev>; Mon, 20 Mar 2023 19:07:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679339225;
	bh=ffln5UjDinHKmDZmYq/DFj6gt/XcI4rsDEMCuyZuxg8=;
	h=To:Subject:From:Date:From;
	b=FA1pMKG/VJHFeXe4iEYcwZkYtQ8KqN1hBVwf30BDwid0KFNXC24rbQ537QBe/7+Ev
	 QlKxsx6vJg2DTmV1GeQ9uSkJP5hlyJp20EY1/f7XP42KZ32Z8zueqTTFfPX4ne43xp
	 o0p3D6cPQx7NgyFbDn1si8PJu2OHY5BiGOeOBL29+rayc6vM+TAh125WCwnmC1MlBg
	 JAwmEq23f0d0NQmPMLmdUNG1v+TbfZ+Fzssprb7lPj0jj2yZy8n6dGhmlvTBWluOAz
	 GupkhT1PnHom4KM2Rlt4X8mrL/hM6PX64E+w18Vccponj9YE+l3ROkgVqHhwy47/tS
	 YRpXhuOoAy5kQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4CEBC6FD1C
	for <ddprobe@lists.linux.dev>; Mon, 20 Mar 2023 19:07:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167933922579.30724.10450596826330598324.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f473a77c1db2cf3dec53705be0356061f9e5a1dd773f1f7369a8dad2fde0653
Date: Mon, 20 Mar 2023 19:07:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679339225
