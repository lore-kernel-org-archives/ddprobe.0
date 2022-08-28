Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EDF9F7C
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 22:00:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 865C6C433C1
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 22:00:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661724052;
	bh=0vbVmRsdnZEEy19lbc62V4jfAFHozo9UvC3JX7E+wnA=;
	h=To:Subject:From:Date:From;
	b=eMNFbMHp7vRRLD9pK2CXMTp3lWTc2f5Nelcq5ppFnvdyJfPBli13rQ83oKtWo3/sM
	 XRjai2LA2OnpqdtXboazi9fwJ7lFOPQG5qqb+FOGZzfwtg+a1FK1NILnU5RAXvLtxK
	 W9YHSj84A26754DC/s2o71VMhJCrNqYlWBCh5c7VbHwJ1k0fhfJv7CrSrc/uTvnvwy
	 g93WYD1sBquNjX4xw1qeKaTodSyszcGF3vMw6Ee3JkuYymG6+fAhA4l6jnSa5ptTlg
	 udohXl4chSTAqB2s9XYMPBeJJPXusABgHwk3ApiRG3O0EaOZZSS7Wnp4Eq3YQvfxIa
	 623lgPQTPrnVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68F02ECAAA2
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 22:00:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166172405236.2214.12938979751949201954.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5a031334be47ceacb38a33834539807e7ea25afc54387ce4958d826e4d5a6d8
Date: Sun, 28 Aug 2022 22:00:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661724052
