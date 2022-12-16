Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C91C91FA4
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 11:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C0D7C433EF
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 11:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671188487;
	bh=NWN+9wHT33xl+SKmClbdDewCCmnGwx5NhetABZDX2Uo=;
	h=To:Subject:From:Date:From;
	b=ebup6ZMDDdsFVBrZeetUo58qqABnUGw7omkaJiRD/y12uarEAeZIAOLceOQNa3vsL
	 WOQUg48plwj2yeZ4vUqTUN/B3+QtnMeWFx9Jb/ag7FGbZbEbyBIXu2bcf3N7ETPzm9
	 seeVwTx2d2qSF8Grv2BFRj114q+ZSw9Vb9lFrjAZTWHmrMi5VV37ZeF273tpK0fbl+
	 nKdUneetG23icCJwIau7fECzT2JHF9JFl8NbTqCLoKY7Eu1S5uvtsbaMD7wdMrAsKG
	 WqpVmIRiuEKAFk6/zqLEOc24I23xgBYP+g5xiBDBp6zsjM/x3WI00HaH4GJaXf7W49
	 W0QyeiIkxEafw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61F1DC4332F
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 11:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167118848739.16423.14479976972895306644.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6609bcb0ba5a4f32cb71fc2f7aecedc5c60f9febd58932f4559e9b63f7c3185b
Date: Fri, 16 Dec 2022 11:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671188487
