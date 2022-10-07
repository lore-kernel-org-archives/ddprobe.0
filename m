Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4BB1A28
	for <ddprobe@lists.linux.dev>; Fri,  7 Oct 2022 05:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76DEEC433D6
	for <ddprobe@lists.linux.dev>; Fri,  7 Oct 2022 05:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665120653;
	bh=Qtzs2EFnxJ3Mts5bF9wP5ZiydiAmKdlgWjIU7vPyvPE=;
	h=To:Subject:From:Date:From;
	b=f1movUvGvc8jlKj+gK0eQbDMXBqRqoJBvWZVZizMaWU1aVhCEgMba4lhH26d/4gug
	 hWZGZI4HPP/CUAOfBtYDA8FIpADLNYBX4zA9MRUU0+B6Ty2Rz2RzRPWJLsoKaAYpvU
	 sahoUjGLm5+XBUhqMDZIAKXs1ZPNEP17SaGqwXSNw4vC1zhZKXMJXyE1R2SV9LZCIa
	 +CZRMSiYkFzNKqq7Uv8PyIzNrIDVba2nk1g0HIiJB3JUj8pA919kAHC5Sw7LOpjlqZ
	 LdFMVsScX1GaIRxoSt5BeWPySuJc+91PVQgUjdVFHWS84Y1FJnzbroSRMLB6mqgLFp
	 FAV2/iozlmfAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5943DC433FE
	for <ddprobe@lists.linux.dev>; Fri,  7 Oct 2022 05:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166512065333.17394.17303665939165716825.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3fe5b08d04f12144e89de08ea3536113050c49bcf8e02423cef769f29e8757c9
Date: Fri, 07 Oct 2022 05:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665120653
