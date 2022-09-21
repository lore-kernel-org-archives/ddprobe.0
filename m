Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C68F31876
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 06:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C62BC433D6
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 06:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663740053;
	bh=SfKrawILdnfIZ3Lopevvbt3DGrpWZcliVowGQgnhAgI=;
	h=To:Subject:From:Date:From;
	b=fvSlZYQtKn6/eMF5zudgKvqs0XuTVs/YPopdSbuJgP9vZ1ZOWvnkHly2Ag0iuD2QL
	 NbYmlrMg8bkVC6Rm79BepSTexhJO9MUBvcXu+yWJRRFEG4kWlqEE7QwF56/7aZV/5N
	 ySWqi7Qd7TRKUw/uhE18FFrSCfK9F8qCq/G4ks2Xxajqy3HZmhNFCFJTVNiEXiTmEO
	 P1djzK241DUDgsVl9GDFE14xgaD/gm4Jgi1jsGQITwGaMfr/e/pz1Oj6RJuNYCZJBD
	 0Z43mY45/Yo6x8IvTtjZLvgerBX4VZRoIPBGhuxamSdwdxW+a8VSoTP9fGGpe6/eDz
	 +Oo3xVYZJuRxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 528EAC32771
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 06:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166374005332.31998.10925505913973899175.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 558726bebdd78b4e4cdaebd5bbf82d394f2f26eaeec65d6cc9c085a006a22015
Date: Wed, 21 Sep 2022 06:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663740053
