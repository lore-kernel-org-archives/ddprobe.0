Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 573F615AB
	for <ddprobe@lists.linux.dev>; Sun, 26 Mar 2023 10:42:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EE670C433D2
	for <ddprobe@lists.linux.dev>; Sun, 26 Mar 2023 10:42:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679827326;
	bh=2ydvUk1N33NslHz3o8Nv3qan8crECWludFw8m6rT1Mc=;
	h=To:Subject:From:Date:From;
	b=Km8VNFcMjPx0jxAHdbU6IAGTS49MaW7x/C6fKE+77QLn6nbFw9N6J+Lcd3uhHzR98
	 894bhY6mZ1PdXBCCeE5DQ4U1yaVNmrdYQdfigUGeI4ha+guF7GrbtLG9tco8LI9m7/
	 dY0cfgzLQzZK4sgMt2tUWROY3p1ZmmG9D3l3pYS9It0z+ZGO//5MLM/BE4mdmVAs0s
	 0Z2eS5+2X6EuWYSvnLP0UpOxFncX4ZmRP/JCittPkJQYxenPoKcbQa1fUxLPq6nCRe
	 jHb0chLDIXSE342cD/V3WcIik0f2CX8SzroMl4HuhPzXp/HjjsWz3vD7OHBA6pOd8l
	 1ktWlIEQHD/CQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE450C6FD1C
	for <ddprobe@lists.linux.dev>; Sun, 26 Mar 2023 10:42:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167982732577.25820.1641514026353771236.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5690027d2e76cc7f1cbf9503ce5353c225bc4349cea47feac30c05be65663efc
Date: Sun, 26 Mar 2023 10:42:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679827325
