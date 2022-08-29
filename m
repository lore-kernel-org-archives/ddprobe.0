Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C80693D65
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 14:20:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 731FAC433C1
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 14:20:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661782852;
	bh=u2BHAWYELhNzI/L5VQG7ZIFqImHIxVRmF+amlqe0ac8=;
	h=To:Subject:From:Date:From;
	b=mGXRO90rBa77I906VJCNbItTpaHzcXb9IC43N8QYjrSVWJl6HrfreBz3/KcbLvAcT
	 WObtv6dpFSD7zcJyVwdN+X71gwKafrygmq3mEWIQVzNlQLc+E14PY9GTo80N1IX2kk
	 uXRygfDUlKVZxI9wDad0ANJchFkZtXjry68NqrfxHSDONFzoWt3UpHsT219tr55ako
	 kSk0NfcjZADPabd8p7LQsIkn1wyLSEUAiTiQ20xzuuaONlt5bVmKP08s46EbWnZJwM
	 c6rQam5AS1YWX2AcSvMja1IeM9M06Anf4ym6Vq8PYQLNlUEhWwUXqO2573DRd9xM56
	 x9qIdjn/uT75g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B11DECAAD2
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 14:20:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166178285236.31676.198524992444028061.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c7bcbf412a1e624abaad37a1d621d722e5b87ae380f840c9c261ea3e0c3354a
Date: Mon, 29 Aug 2022 14:20:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661782852
