Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44F0879F9
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 06:53:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAF03C433C0
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 06:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687848788;
	bh=hOOSDqxqQsnZKSzDPJLyjrt+eVs7C4+8o436Qa/YbN4=;
	h=To:Subject:From:Date:From;
	b=FeF2Xdc4O45m0b9AhA/RTi9EuxhTbu1V9n9itKtYqa0MF7ILmxQqT9gpaGO7cbZQF
	 eJsKHtmzuDfbH+iLwi7dbK6O8TQdlk1OBKj5qDhknRexfHYtwZ7CSy8dUH4fTUqrpt
	 jTBAfoU24/FWwfiCL2IOnZBlwp5O6xm0bPGttAFVP84phrv7JxRZb2gnTKvcsZxR3b
	 1e+M1V+NKirNkx92/ayZ6whsdi98QTIj93SwYt9IoKvDKCK6gyKpScW/RK1XGjh82B
	 t+utxkFtsJ7Vkpn2xfQhBCC1537MRT3LadZympPaebujC1Q7b53vT3Uqu+7Qa0zhrF
	 uXz2H/M4/BH4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF10FEB64D9
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 06:53:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168784878876.27542.5660156908055638283.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a2217390c21b79c498eeffb7ede53ce27316af60ac6132717c1b1cf1ef2b8a3
Date: Tue, 27 Jun 2023 06:53:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687848788
