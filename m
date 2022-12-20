Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00E011365
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 23:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 92E7FC433EF
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 23:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671580287;
	bh=BBE7n6EgNz6chLx/AplGueY3KeI7b7i6G8joRgrokHM=;
	h=To:Subject:From:Date:From;
	b=V/bwA1li5VtEvd/bESlQnjHFAZuT5irNmVLnNs/o+T6GKxiZawgMA0vaurAOy6V8A
	 eQlwUfNpm14m2AGBFGVkWZt0msJ1PeW/8/QIUBxZw+dnd3GQAt+iUiL22ml/aC//Ct
	 AYij00xZW+WIN7oa6pIDWAHsVqL6Y8SxCO514aHuKQTEUaJj6qaNOhU2SJ8eS23VGe
	 fIekOLpU6ZikmMZLiKuuZbUizrSTMFC3rroEQMTcPJgEoCqaZE0AhftFcjRjnjYtOa
	 qX5YNuLiO9hDHiX1NFKPTRmOMmIMMOW/loaMM6DOdFvGDm0mVST2o7Aizm9P1d2k4E
	 nYuwkqAS0kI5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 73D01C4332F
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 23:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167158028739.13765.4398876891627796032.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e447053482db35d9e5c0ccf635996cffcb912056bce181d280e4d306ee2a83f
Date: Tue, 20 Dec 2022 23:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671580287
