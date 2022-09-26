Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D193A7F
	for <ddprobe@lists.linux.dev>; Mon, 26 Sep 2022 01:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74963C433D7
	for <ddprobe@lists.linux.dev>; Mon, 26 Sep 2022 01:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664155253;
	bh=M/3joWGtWPI8NornCTlrPtUcqtJkWUvo2NbKH7zHT9M=;
	h=To:Subject:From:Date:From;
	b=Ts4tkEWPcg0dJT9n8cNUDlKCoTMBEkKG1g2PLRK6MVTByPxj+yq9RdfOosO4tunpt
	 5g9kbkg51sLNL8A/lGsOnYYDszk83z5pzNXi9rCLmVc3dxWicvUMo1ZsPEdWNmUBgq
	 I9jEqVL2PwwsvPyUZH44B7hCyBRXGDUL2PAJXJ3C5nPDNc42yFEGNlYg7DLvj8eAO7
	 erytqWsG6kVtG3QQXY8TC9BveM4aw3Y/Q8xd2+O0pAOyqfyGm0RoyVBr/fyCrHx/2J
	 +UijDYMrcaGDXP4UuWB5M0mUPJT2su8/7QuoNTO6sXxtznjMQI0P9Im9vAtoGe6BeX
	 s8lYPsWQ+KCFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5AA07C6FA82
	for <ddprobe@lists.linux.dev>; Mon, 26 Sep 2022 01:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166415525336.13276.10684345982619681336.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a50b44969a890f2884f90a5b52cd09d9057616a437c5dd2db091c88fb89ac01
Date: Mon, 26 Sep 2022 01:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664155253
