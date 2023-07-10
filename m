Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42FB217C8
	for <ddprobe@lists.linux.dev>; Mon, 10 Jul 2023 02:27:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2210C433C7
	for <ddprobe@lists.linux.dev>; Mon, 10 Jul 2023 02:27:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688956028;
	bh=EaJMddI5xn+TFZWGCMjjYskFrCBtmBLLDNhZbIMOuYU=;
	h=To:Subject:From:Date:From;
	b=OJFQim7pfSluHrDBj27PwYl97C4Ck+mI8nOfin/nkDqcE19xJ4ISpbIOQvp8m5mP/
	 5Hkcy9IvPBNt7eBEQiRqPeFX24XxpikT3rNkUVQEo2+JN3EMUVPtUI+nAhnhWVXCPL
	 jScs5NIqtC3Z25S0HJ7ZBdNE4BHneK2h3ugCyrk2ajhfMHr3a4ep0IO9d7QaolO2ek
	 QWoNrixgDrLqV4vbeXTd4ypH1AvYBv8uVRHA3/WVzqkWLmPG2+h5CuLJgUZt04k3ak
	 emFLdS86KIt0u63FU27oHWD3FvsmGMdy9c4WfNLFTbjtoBcEhjvpVl9W2ctkaYiwma
	 0k2b7mVpW3asg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2A16EB64DC
	for <ddprobe@lists.linux.dev>; Mon, 10 Jul 2023 02:27:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168895602865.31215.12754200169585429291.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a20f69a5e87cf6030d7ea96deb7e6fe0c986a86a8a5af3322a2b3b9b3161b5d7
Date: Mon, 10 Jul 2023 02:27:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688956028
