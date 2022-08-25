Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B380E2F2D
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 22:30:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 737C3C433D6
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 22:30:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661466652;
	bh=MdgfZes60P4SUBnjFnlSNxRuPTlKW1Apn20+VoaaiVE=;
	h=To:Subject:From:Date:From;
	b=A4yFDTNx9veJ8dEyD4iEsPtvsMIa41XJebYbxDz/qNnRXdgB4CO/o7BhmmelpLUAu
	 YIpl/b0JwcWheOMja5rv/6z9lgmo2dKK4Ys7Ir6A3PiUqe5jo2T8etEBhHLrX8Fkvk
	 qFGx2VxqtsInEaSB1TFmUpxLeKZWEuPx7r8okfoMjlYfkZUQjcxUMJkwuNQTkAeQMZ
	 B5I8mgwwvzmxDLEJnFKEeBHM6mytRWUvKbPZl+iefH2+xcGZ+5wgE1l9UK+GA12igY
	 A1V3+w99LDwQ3BEcmN1gbgXffU45BiX3hI790Wsa9Gi5jlyNwrVPGQQRE7qDEGmgVs
	 DYQxVWX6l995Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E59DECAAA3
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 22:30:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166146665237.25823.11648049412961813731.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ce338b4e7b04c72da9cc62d2f661183c77a5a668b08f08fb2aac90093013a52
Date: Thu, 25 Aug 2022 22:30:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661466652
