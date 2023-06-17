Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A9491117
	for <ddprobe@lists.linux.dev>; Sat, 17 Jun 2023 12:39:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D10BCC433C8
	for <ddprobe@lists.linux.dev>; Sat, 17 Jun 2023 12:39:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687005548;
	bh=Fo9cl8Xrh9gUL/dmDtsB/pvbrrHvD/wLF3Vi37Mg+YE=;
	h=To:Subject:From:Date:From;
	b=e+EnSQAL64KzoEsr+gkQ3suvIv1kzYkIrTrV6wshZqyrCNuxFKHBfhi+MBDSr0OYA
	 +VM9iW2dC5V1GPku3DpMwvk2Zv1iXJaEkAjK8UyO0SKwDessgQ965UEdKECCTdyWy/
	 oE5QG+N678BR5p/pO5xlAag9tgAnzNS7x68ROqVS5v01T0vkvUrBE2rk9qeqn+2Wdn
	 H/mSPtFjXnxijAlWwXC+gPF4Rvh0IA63lbScd9Nzh6xjBobP/cpn0jyufrzj/HaJNU
	 HovgnKgxQ1TH15gMtkfohHmiveGK9k0Bvj4B05BBEQwmUJHs+NC9eG5uohoN+naFSF
	 CXlg7SbqN+iKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B17B3EB64D9
	for <ddprobe@lists.linux.dev>; Sat, 17 Jun 2023 12:39:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168700554868.16992.6890488577750175751.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f825e4ff4a1246365a93bee65278a9435d90bfe50bbc6866dcf8f6e432be041b
Date: Sat, 17 Jun 2023 12:39:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687005548
