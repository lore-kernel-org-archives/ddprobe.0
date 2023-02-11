Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A14E2A2C
	for <ddprobe@lists.linux.dev>; Sat, 11 Feb 2023 02:24:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E9AF0C433D2
	for <ddprobe@lists.linux.dev>; Sat, 11 Feb 2023 02:24:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676082245;
	bh=K3P/9bs0gn0tsg4uRvTGbLvRqQ21rig17cU0mR5EUYQ=;
	h=To:Subject:From:Date:From;
	b=qlworUk9edHxpLCU/m6FHAJBsYkNZ61dvqLWKZC+4P3xR5YC/CsCh+VHEU8N6waTM
	 iTjKGz1kPin5PoeM43kJDcymISE3DfJht/kBHDTfG/XF4gOVlHRDI70LSQePWOdG3B
	 0M1WeQ41H8zwrPrU+bDAHpVsDDQoym16lPRYhR0p+cbFCCJugRygcFOO1dAFBfVguA
	 vLe3Ap7EbzlMrXhNsMhpF/bBChpO7p/DeAwVVmvH8MYh/MZsCUL3AkMX17L6iPJgc0
	 QQ4C0sljhLYiY80rlG5JO6jndUjnwn1IGhomLtgZ6pTGYo1z1OnmtIRGTgKBEPTxph
	 jHB8XHGy9OsWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B57E6C05027
	for <ddprobe@lists.linux.dev>; Sat, 11 Feb 2023 02:24:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167608224573.13318.6935670978148406345.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 464d1b4dbb442052593a9e82c8d6066a03dcc42ab2de9ef5a3a99a0ba8c9d4eb
Date: Sat, 11 Feb 2023 02:24:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676082245
