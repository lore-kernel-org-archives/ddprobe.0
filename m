Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 787DB174F0
	for <ddprobe@lists.linux.dev>; Fri, 30 Jun 2023 22:03:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E35B2C433C8
	for <ddprobe@lists.linux.dev>; Fri, 30 Jun 2023 22:03:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688162588;
	bh=sAGDjWwbgTrwtieonETWHu8moycJ9iYp16ZBjeCYxnc=;
	h=To:Subject:From:Date:From;
	b=mzLSgvx7g1ezE6iKOhpKXElK7DeArWfezlfwyb7rTV7PHraLDJk8mlCA7syfblPkW
	 myRpdR2VYxtolGPDgtpANpn/tbZonsQ5h3H58jnAg/OugPxhYuOKNs4Et5FcXmf0Bb
	 wrhR1GKwD0azudg00CKIK9uuzUQ2XyorQqx5hTMoQJEQVpH2GhgVKqKZ4ut2cE5Kog
	 37FNGs0eA/BTqK1N1KcKwfIp2kCcqb9WqQFxm0AwU/ZfyRPeqN10IT6meIEkc2z5Fy
	 so4Dw6p4vmEA2iF+C0d8Qcux584m6Oh48Epj1d+WXRJxKfBkPATp1qChxl8/S/wDVw
	 1RNFvq2wc8lgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCB20EB64DA
	for <ddprobe@lists.linux.dev>; Fri, 30 Jun 2023 22:03:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168816258874.2437.8061565076388061724.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 717becc3babcb66ed2e75b3e5bf402395072c0ab96bcbd7ecb238299096eb2a5
Date: Fri, 30 Jun 2023 22:03:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688162588
