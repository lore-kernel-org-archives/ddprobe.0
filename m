Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA5AC10F6
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 10:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8B0AAC433EF
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 10:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670666487;
	bh=d/nHiNO0W/7ScMW1PmxvgzooEBkKTDiNaM+7099Hr18=;
	h=To:Subject:From:Date:From;
	b=EzS7nfIFF3FW8C94Z+qlrMq2F0MsTxysvlGzw23OuUV2Azzhj0QE1m3eccgxBbHEM
	 qVoIKvpyI58LJp/e1VRzJu5+D/g51YM1LQQNstDY+Y20cjkspl5V/JQU5aKgbtMKzf
	 utWVdWpZGVE0n5YUIQ2mRlG5Z6lAsGXp1/FCMdk88zDlkSebWCLwP2Abfe9jrCT11t
	 bFYYeIUj5ZdnIiJUrQcDfS8xdZbAxAzLChZcrV6vMxXnOKbs+Mj+sKp/KCM4B/pEYg
	 ZlIW/c+yuT5MwhtERFUy8iiz1Ys1sn0iCNb1Qhv0I66Hx0BkFBGeh4eQvnVjKcxmjI
	 r/u+eNJJG5jxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6F8B6C4332F
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 10:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167066648744.22660.1186782866918530425.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4703797dee716af972015bc075aa5b00c35bc82d6e04f659cc2a006f8d99a368
Date: Sat, 10 Dec 2022 10:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670666487
