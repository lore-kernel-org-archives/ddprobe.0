Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B21217D3
	for <ddprobe@lists.linux.dev>; Sun,  2 Jul 2023 10:24:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1E37C433C8
	for <ddprobe@lists.linux.dev>; Sun,  2 Jul 2023 10:24:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688293448;
	bh=7o05zoFlEmaB2q4cojG3dDVthD3YLFWRfnE2HlSx+tY=;
	h=To:Subject:From:Date:From;
	b=exnGT3Yn3LvaZLiXnmQJWH/tSHb/Qm8aFz1/1REVLnxTa06PpbxhcqSMnmRnmdwoq
	 6sLvXnZCZkdoTD0RYRyJ4YXs2IdqvdoIJs+6S/P7w9Py4PR75nTQQ1INY9wPhr3LM5
	 1/Qujznq7Hm4RoV6PwlXH/ArD0bQP6xbxT+BA71N9ftZriWOFekIhQMvzNE/ghEbas
	 UN5nlpB/EHA1VJ3pYxbUBD2GGuAraaid/Xp+MIVwuUlWQgL+de4XuO/Ms7lLT65WD5
	 7y+TwYrJN/ivq7ilxkcItL7kH1BZawL7lra9illIVnhMuy3ptVpPepkaGrY+TQo6sf
	 91gS36V3KJJ+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC0D1EB64D9
	for <ddprobe@lists.linux.dev>; Sun,  2 Jul 2023 10:24:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168829344872.25695.8419405008627611566.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d6c937dd9009e0597d4a0d59c3c391ebf924b26fa6995dfbe943f323a4f82bb
Date: Sun, 02 Jul 2023 10:24:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688293448
