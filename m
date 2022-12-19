Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D89DB363
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 00:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F334C433D2
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 00:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671408687;
	bh=Eg5sKC8I96tiHWfTAnLbBaFdJ7wfIunBS9kWsWxxVds=;
	h=To:Subject:From:Date:From;
	b=s/0bhOsoVgeZ6uMCyWJiSez/jRmz0Kf6lubvi/w2p0dFRpojIBe/LPhYCSuy4Lwpa
	 a4jz63ApnmZ10QwHuRaG4pcM10SSgy3jf9UEG5jakEcbNtxBkJoOTAp0smPtME1IJN
	 9RtyOrwjV6zZQCJ7FKVZGDW8sw9y2g/lE+UgaHFhlqBscPcprqS+gB+xt+cq5HsbgQ
	 KpryedE99LVDPIA9PHIu3y70FsyzUoabSGwUWG5hjqABwQ9foTdAhh9UIp/8ktTdEJ
	 RIs5QUGi+j7ZM27NQH5o1PTgkEhO9+x7idQcBQNU79pQrBcFlgac1Ue+V3ChRlRrRV
	 hA4JItwAUmuWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6615DC4332F
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 00:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167140868738.1167.2091916951601548654.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7294cc9f7b90931e254c4f0d9b649f7cb1f0a30c531e526e9e922902273d791
Date: Mon, 19 Dec 2022 00:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671408687
