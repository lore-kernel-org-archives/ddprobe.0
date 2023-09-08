Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 577F7B643
	for <ddprobe@lists.linux.dev>; Fri,  8 Sep 2023 22:14:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD27BC433C8
	for <ddprobe@lists.linux.dev>; Fri,  8 Sep 2023 22:14:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694211248;
	bh=9+oOX3hqSYxqa3RJP3rAeZUYhajVix+Hzjh2FzvldYk=;
	h=To:Subject:From:Date:From;
	b=Rl7p2gAMzSq3/HelcVl13DwGV8ySmJM5qdh8hmk3vz5gpjvvqE8NyfP9EjFEUHoqz
	 qmv3sORFQALUxzAfFLs/ws+at9GHK/bMrLMchXTsfFPt6gn7VVlEqQekbu5bEnVsTS
	 X8g0ijNphqCs36FdtZe1pbLzsa/0OLyFCbN+5fY47S5J0kvPBfIDjHKxdmOdiYKVAg
	 ebrleXA3kJPkXMI4b0NYJZbEJdwJnJ05Mejy5cJRKyVDfUyYGmV3CwD09e0mhHiAQ7
	 hrc89r9khAV53fdiRxvqek9QB3eSLlcKXeY/dj+a0bYzMSWB3Qjt1PRdszteHfOxUn
	 bgOxWJt/0qrMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4925EEB56E
	for <ddprobe@lists.linux.dev>; Fri,  8 Sep 2023 22:14:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169421124866.18838.9925875668906586876.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e3cafd5f6573735e432d16a2d4bbbb4dd89d0f8519127ef834f58e80529def9
Date: Fri, 08 Sep 2023 22:14:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694211248
