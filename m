Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B2F0215A8
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 15:10:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6EF82C433D6
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 15:10:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661699452;
	bh=XYAIEZ/B5FnFiAMYhMBkimSOiEMtCSrds08kPvTmQBQ=;
	h=To:Subject:From:Date:From;
	b=k+eQhN5RNcPppu3ykZ+1i6LgTRliyQj5hXRAm20ydliA4mtGN3PwMhSWLsX4/4QR1
	 nscQ18QhOLgI9fCszy9e0RGzPyaTi46BYnfC3KZ49Bo/u8Xex+Z1fINIp98PjTdwZD
	 fwLC1G6jIUgG7uwn8E/Z5qQMIoSid7Z9CM6Fh5+r1DxdxdYW3d2hfY+gGJGrQZoa2j
	 u3RdzBVoA8fKSXVTlgYyfyGk70AfnQAv7nWgsNFXpjp92dezuJwHkbnj1jHeGMq9gb
	 zmXfDL35yD5+WYeeNP/RQPUB3WisR8RYKMWNrhmaeXH7+rb0xIl1R0IqDsJwOHSUp3
	 sI87zNFaqb2Rw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 552C3ECAAD5
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 15:10:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166169945234.11237.9292951616205566122.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc3b3303595412f9d78d8d80bbf9cd3f74a3d5b3d17975db6edd5e86f350622b
Date: Sun, 28 Aug 2022 15:10:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661699452
