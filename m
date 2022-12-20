Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C61CA7E
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 12:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E4EFC433EF
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 12:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671538887;
	bh=+fHM3kubNgRxebWP/71KA5cYhigR55/MXT8FEeSv4U0=;
	h=To:Subject:From:Date:From;
	b=GiklSYcfLwK0nrca5rTg7i98WswA3w3Pek/hASef+Lu+xNUK+M2xYC+JcPFNwKN5U
	 y7e5dSvs9qYysCS6R9hi7SiAUQPncn4yTwqHbxAKpwaYTA0CiIn7EzA06cxE8vlixW
	 ur57HnJqfNw3XTEaCzu5B4X3cp44xnxyiNM+8a5NQ5U7/5KDuoKw7CAyDER1Oza2Ps
	 Rww2ghBjLFqj2Xj1SBb4bTBzw1T0LNfR48Db5NBTAenx63XtRn7UaiyHjwgjrdrasS
	 qOO+oKFZCSxoeS/1zEGSPUiVeXEN4qAbHRCJMLbYWMNFbNdrxGtO8eI/iki+RygLFw
	 gvWbt5UXnbZFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6253CC4332F
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 12:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167153888739.25956.16620514872584231737.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e74e12262f01b8043a12bb19968d616689f712f2878ff50175b00912dd05330b
Date: Tue, 20 Dec 2022 12:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671538887
