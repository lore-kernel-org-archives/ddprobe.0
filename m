Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39960747B
	for <ddprobe@lists.linux.dev>; Sat,  4 Nov 2023 19:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JTzUzaXo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 93E73C433C8
	for <ddprobe@lists.linux.dev>; Sat,  4 Nov 2023 19:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699126096;
	bh=mqkYYDlXtrUCocrKydk/XiriE4Myu7NRJGKR2EEtcjg=;
	h=To:Subject:From:Date:From;
	b=JTzUzaXo79+T5rMIWO8ooWf9/sUy8LSlecWa9Dsw/Qfslg48GuHzqS+taup0+TEFD
	 owtjLMgS/92MT3inqteHscw8hPEKDxfRlEtnf2f94YozLJG2+k7MYxLlP2p02pgBJN
	 xoeuVITlg+i6KX0CqpDcIFuGZ21CdurUYF2RX/m/hii6k44G5kg47lgcFGzPrknnfb
	 VPLhaHUwACqvh3CEiZCn1CIwMZbOHDLdDzaCImO4pffJRtvE32bv4V6aRCXbIcE4b0
	 l9KunZWVOEVfij4WY2M3gdBfMCEwa3wcQxnqAOpiDHUemU0gB9xZWyIjylX3PBFuq2
	 an1Fk7LhbTEww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6E942C4332F
	for <ddprobe@lists.linux.dev>; Sat,  4 Nov 2023 19:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169912609642.17252.6799576768934179606.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ac80b1a02ecab32c613f15a1fd2758777ba46439991424cfcb23af9504d439b
Date: Sat, 04 Nov 2023 19:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699126096
