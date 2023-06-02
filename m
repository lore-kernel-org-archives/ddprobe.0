Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73B78846C
	for <ddprobe@lists.linux.dev>; Fri,  2 Jun 2023 08:17:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB629C433D2
	for <ddprobe@lists.linux.dev>; Fri,  2 Jun 2023 08:17:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685693825;
	bh=flVDVJWkjjZH3yQ6wp+Uj5dJLo16FEzuwigKo4/DTbU=;
	h=To:Subject:From:Date:From;
	b=rTa1epjSHRb52P3S3JxZ3AwRb3AwwuYbOnQ8lecN1YmHX4kKn9gGdLJIGsLJdOZ9a
	 L51gAlPwwzvtddKpr8zSPpnRkGe1DJnCS0mghTzftpu7ymUj2Tbl/tEKmaftM/DsGo
	 F9W+qdlC8M9xbZybaL2bXfBN42UhgEBvAafduXHSeHaC0HTHdILwXBf0DEMDQBUDuZ
	 OSQE+JgyTcINSTaHbUjesUfr/Xu/FYgnBTivJJuGr7niDVrJxsvBa8UNMY8b+F188p
	 FQ8fGP/ffXPS+ccXyin8qjHp3TcziVfHQeJ/POjkxMv7/BoIwGEEdblmyuYegjuhae
	 /JDjE9qRKlrRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B82F4C77B7A
	for <ddprobe@lists.linux.dev>; Fri,  2 Jun 2023 08:17:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168569382574.7216.8055304849462402066.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0adfe8d9103c22bd70eb37f53e9f871b365dcc1c0fdbfc7d6748ce188928267b
Date: Fri, 02 Jun 2023 08:17:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685693825
