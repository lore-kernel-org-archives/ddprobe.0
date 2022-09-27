Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA0E6653
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 08:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 66B20C433D7
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 08:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664266253;
	bh=pSTEKnhSX3saty9VWbB5M17dMKvu0SFncD7FV0ND6Zk=;
	h=To:Subject:From:Date:From;
	b=rtj6emVoieSpa2Vzg4shjRHuEJFCWGRpuFd3Aoj1Z4rsUQ8RpJf41phmKxexL0ODo
	 0tbYFKLNqSjtdXTgTLlH2UfkD5DOfmgFL+vBaSgQCrebISbDQ7JPootzKeN2X+14+f
	 N6nD7v+6yoiw0qliDQiKJ1aLomFMtMuWp6WfhkrPc+meXD/zY2fj4LHpTpGuisDvmH
	 XDf0OXxpgdyGrV37g0kfZQZFiiegQR0S10MfnQ6j6n13W+sDghHYRbf/MvuDOEFzGN
	 ZhpcBGt7Fcukh7r9iybOE8rgqE7iU9yNCQPGGwzDfYNlOaOW2yiBnhcA6NP2Arx1SO
	 ZfhJ/ttmJgDaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F400C07E9D
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 08:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166426625331.18008.16324308734045239789.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eff16637b5119f4cce29e5d2575ccb7574afcde9137f34abab03ce1f4b7f0b39
Date: Tue, 27 Sep 2022 08:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664266253
