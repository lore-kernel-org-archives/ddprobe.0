Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8234CA23
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 01:53:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D72BCC433C8
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 01:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687830788;
	bh=GTn9osX/yFqiLpQLljU5g9h2qpfDB/jGcFAom5jMJK8=;
	h=To:Subject:From:Date:From;
	b=NJc4crQMCmHVnvfuez26Jwah6cNZpdRqnLC5yidcVHyg0CxGqDJL5e669J1+DRD1B
	 KeC5Zr7cDy1Cr0AlA1ser+tp3tAH08IJM+7MXMHpMtpD66AxVypY9nGEmAtZC9Jzyo
	 87/7EtR4HGrIDT6Q3ItylkZmnRbFx4PZ2w7tuu9mnrpQhnbPlrZ8tBP/n5DSzrhBDQ
	 z/6t+yvpi+7I13fAkA3/FCHU0Vw7f1l0onsimE9wrMe5XIDHTLijYDOhOWOT4ghf5Z
	 te43Ul6jHtYZSAYsMYPf+SW82rmYTRjezJnNG9EnGwgxr6zv0ZuoGAVNDJA6BnAANe
	 gugm7VPLrT4pA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B321EEB64D7
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 01:53:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168783078870.30655.11025936335868711755.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e31a6271baef6b7e8ffbf337f002355c5413ec12a60804b3b42ceba2d4a4b3d
Date: Tue, 27 Jun 2023 01:53:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687830788
