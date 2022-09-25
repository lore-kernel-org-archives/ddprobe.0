Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD31520FC
	for <ddprobe@lists.linux.dev>; Sun, 25 Sep 2022 18:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 714D0C433C1
	for <ddprobe@lists.linux.dev>; Sun, 25 Sep 2022 18:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664131253;
	bh=N3QEllaIYZgFct3CZ/DXeq0c+3CBS85df2lrW5vlLTM=;
	h=To:Subject:From:Date:From;
	b=nxTP5BjZ3forssy41SIK2XF0TjIcKz84DcAxUEUkXHvmJEpsn4TjvoG7yaZURKKmL
	 ZLARqeIDwx3Vzph1QSUOyqQ27AwVGoobjQKNAszH6nmNWP3gpHSuAZu1unNNhIgydm
	 qMONbaF5M9NvM8xIHaenaaBBCqsruMgxu8CTKVrhrAXKFTzzwxTjCc84XRDHhDmI0y
	 3jjcgQvXqPTwkqByTxEMM4wFm5AYxJikAwI9azu5WeBEm5UHWIAkoFk2D7vQa/1YQ6
	 vta0kvatqOpK6JYlIV2oWJcVWz3yuCImz0XHP4JUZVSafV36fL1U+ivvNL44CbdlqA
	 BNTurWs+F9G+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 531E4C04A95
	for <ddprobe@lists.linux.dev>; Sun, 25 Sep 2022 18:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166413125331.25774.1112341930735336842.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d41d47e8ee9d8370f97e9a184382b7ded6128701a7a9947dbb11f5d79a0f7b79
Date: Sun, 25 Sep 2022 18:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664131253
