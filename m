Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E136E2DB6D
	for <ddprobe@lists.linux.dev>; Fri, 15 Dec 2023 13:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HPz/LWKb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 782EDC433C7
	for <ddprobe@lists.linux.dev>; Fri, 15 Dec 2023 13:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702646896;
	bh=3pb7n+eT3UK4okkPiI8UAdTgkoARureQ22ejr9bWuPE=;
	h=To:Subject:From:Date:From;
	b=HPz/LWKbuDg/Bn7MqcuncZG1EC+F0SZ8po4JhKm3D5GYnaEALzMRmRcFGlNgIz0cp
	 T5bNuS9HoWswnj6HH1K2l+QoCRjKKb1mFu+fJjRdwHeDUcsrimVBqIdQxVJi4QzUAJ
	 HJ2wszPZFoc00J2fg6EuTR0l5D5XREkYvhqib53EesjsgQAhj9JBrbr+NjJidrDiPO
	 dosnEmA5k77dL1zBOFH/lTxqiKFqeXwagvyA98ZlWzj/ZdVCsOEcTQ7zXKOPq1cRcb
	 6oUUQNnLZy6BumptjBOHklpBQGIND7JIUC/anVrYyOWM7Uy9d9PqaNTslQ0l5M2RgP
	 V1fylUlulZf6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60983C35274
	for <ddprobe@lists.linux.dev>; Fri, 15 Dec 2023 13:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170264689638.10768.15316576512671078046.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f75fccbc81ef9432abdeff88508b6b88a75a75b3787bad7cdd69f72e5b11dfe
Date: Fri, 15 Dec 2023 13:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702646896
