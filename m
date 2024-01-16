Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CFF21B96D
	for <ddprobe@lists.linux.dev>; Tue, 16 Jan 2024 12:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WvF5AA8y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 84871C433C7
	for <ddprobe@lists.linux.dev>; Tue, 16 Jan 2024 12:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705408096;
	bh=FsJaUo78NQtFsgTp5eKYXKVzsOFMToCIDxc1tfmeO7I=;
	h=To:Subject:From:Date:From;
	b=WvF5AA8yEva+4QobeSlNmy+s5pkA0IfUObPTZGA/P6i6IkXS20tzeSJc5UmxrOvSp
	 pZEv2jw0hZnWM/z7Uj5L5YFa/5jdE7+JiHuA1HUoFt+c38IdLAlv48mgUIbOnS97q0
	 +SozHzydCEda8uPRKST0N8Lp9+68gf/5HQgffhVQNAxpo1Aii4Aq7rcDMJAQrJsoTE
	 GJrLSdmRm9tV4+S9dwCw90LZYzGIBdlB+LWFIbm46h8I7KDxdiVwKDOEewiTtdiQN1
	 EYtKLSFDvdsK8BtlYwRzIBkcuAONhru7aVZhwO2npJ7Up9Y6u1EH5RcrXphpbGJnpv
	 F1uECB6bTmNow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 665F9C47DA2
	for <ddprobe@lists.linux.dev>; Tue, 16 Jan 2024 12:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170540809640.12302.14199377878293968598.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d510dceadccbfc537c97e1fa635b48751491ce6edbea756c669e5079bcee42f
Date: Tue, 16 Jan 2024 12:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705408096
