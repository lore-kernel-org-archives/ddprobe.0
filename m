Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0C432F33
	for <ddprobe@lists.linux.dev>; Mon, 31 Oct 2022 16:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A8FFC433D6
	for <ddprobe@lists.linux.dev>; Mon, 31 Oct 2022 16:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667234454;
	bh=A1ceSIRav6kY3+G7wX+SqW7cLUxkDvpDJ6b0LljwkkY=;
	h=To:Subject:From:Date:From;
	b=fju7/LOzmYjMBB9sJU4Q4WZgmzkn5sOpQEGSjenLqPaY0pFA0JbEPiS4jpbysZUFC
	 0Cvz4dmZIj41Pi0qmSWvil8YnBo+HKHnjot825STJfSmH0Nh1a9vMNN1e5S6bREorw
	 OPIkcMRWnK6OoPGYOfhIqlZaDuNGPgKYqr4YWsyIdgN22kLeYXkaUnm/NdSpxUMyvt
	 G7pUIRX+eutOeafmzrwmAhdEN3YBYUrYNMPdvLLiTFILMf+u+3e9ktWaz9UH/CZ5yE
	 kfavxINErr0r5C451nBBsHJ51KUAsWRzGqiU4/bsj/TXiy1vaatqvceDwpKWbewFJb
	 WrAjNspf65Znw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53339FA3746
	for <ddprobe@lists.linux.dev>; Mon, 31 Oct 2022 16:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166723445433.20345.3109147445727156284.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21b0b5ba17a97a3c6b2c51cfb281fa27cbcb85e9deee677814a97faee63c0214
Date: Mon, 31 Oct 2022 16:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667234454
