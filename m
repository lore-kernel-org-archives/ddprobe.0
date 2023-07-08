Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DF3C1C13
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 12:27:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA30CC433C7
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 12:27:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688819228;
	bh=Itwy7xCZNw80qAvsglPG1vEciVNVf1BgK+M/+Auk5Ks=;
	h=To:Subject:From:Date:From;
	b=ZGasy6Q6J3n1gQqoYRiA969c/RDqY4BlUy9d7XjCsjuYKOgwMKYIIKFcOfMG371cH
	 Wm/n0X6yBVmsGRbgqwd9+Ljzye7SimBvrezBvoyz7nVhQEttlP1FYehYqE3tGi8JW8
	 JPwViTWqul2cCKyxD1smjY5JpI3OPgvxhqhDe2+4ilzO4eOcKJiHK5Yq1+bHVSnuNU
	 B1FUcSUQKy2/1QUtNav2ixq2o7QNulT6s+TAGvtDi+kkKVJdi43yRuQvdCCCYXUvhJ
	 kbCWJJgZQ31eXlk2o8cZH8g1n/3WvdRBr4TcVNagF/elYT0yeEBRO+yGexiNoyoNyf
	 abSZ39PKNg3XA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACB61EB64DA
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 12:27:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168881922866.9450.8399969890823836139.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec7734feaeff63f182711d8647fce3de74b78bc296bd952da99ddc317ca1b665
Date: Sat, 08 Jul 2023 12:27:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688819228
