Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A5F827B
	for <ddprobe@lists.linux.dev>; Mon, 24 Oct 2022 13:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6766AC433C1
	for <ddprobe@lists.linux.dev>; Mon, 24 Oct 2022 13:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666619453;
	bh=ebAzxRb2v+wu3iExLUluetHm8+hCwnYvtF7hL7zxD/g=;
	h=To:Subject:From:Date:From;
	b=JW8s2ub+6vBRakx8C58jaVKhDjcFBWctOFXZTTFYJ0lVMgHkpy+iEQ7TlStBCr1nr
	 fl9ak85nXwtSYpvCwLghUCxDeX8M2ks0mbU3UzddlYSxu/ghvhaoTeiWsEUdNNsete
	 L92Kf0Z+1x6OldhCb7zWovhtw05NiWRl9PiXG23svSSi7IJuD4VfVtzOTivNvkvagw
	 OEjsBcviHQdBj10d+VZNHsGusLAmWMPkSdv0dQhBU2SfUdU3rR9c3kupeX66WfGSsq
	 P/E2j+jiT7vkhpYuCXQmKuhEZr0RRGZhzQqvxKFUdOl2IIkrRD5oZkAP+pBu5lf8Uf
	 nrUiS0R+VWOKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4E75EFA373E
	for <ddprobe@lists.linux.dev>; Mon, 24 Oct 2022 13:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166661945331.9396.1441392247889554060.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47200b4c4583bd8630ce1e57cbcd2efaa5ecfe20540ca1d500d8b47cf18cad6a
Date: Mon, 24 Oct 2022 13:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666619453
