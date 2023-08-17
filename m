Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56A65A45
	for <ddprobe@lists.linux.dev>; Thu, 17 Aug 2023 06:23:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C72E6C433C7
	for <ddprobe@lists.linux.dev>; Thu, 17 Aug 2023 06:23:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692253388;
	bh=dRetglW0wd3E9XDHzaqkGa6N3bgRBtf/nRkfu/ABUuY=;
	h=To:Subject:From:Date:From;
	b=FzvJYWoxD9+PQk9CwKcocGKIL9sVcgBQbML7Yj/HgTp3T4hXCZpNwQ41oFIIIzfld
	 udDMGkEVXRvbdiAeSN22aJ7Bfy2y8D5smLDByN8IJiTU7u3SgxDz0wuaGnrtugoGU0
	 H4S1SALPq2OP/eFC5BxIfRQN7cGXaxc754njWSkX/yFgT8nbH3yTqYeb5DsCa5r+bD
	 7tRAwpKoOPC3fRpkOmG4uN8Dfduk6VMIXiqSygoTFax0rOnaSwSpzTzUrIJHCkUKeD
	 OObEiOjcEfPFwhw5LK6k5+a86up1bhbiOeuCakdOaDfh2kdyUp785vWNOEb/IIndUh
	 Jm1FZzCVobiAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A916EC2FC04
	for <ddprobe@lists.linux.dev>; Thu, 17 Aug 2023 06:23:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169225338868.1441.8635355066788305461.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d9b32523ded77b29345ecf534c6db8710b2446e79977eb5b8d2c35b7315455a
Date: Thu, 17 Aug 2023 06:23:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692253388
