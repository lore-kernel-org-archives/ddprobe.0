Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7F3F7E3
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 02:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 86203C433D2
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 02:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672107087;
	bh=312QrZ/ttBesPIetJNseVqhFKmg4nRhEeNqZ6EY0c0o=;
	h=To:Subject:From:Date:From;
	b=NBm9eHvE7qA1azlndir9c0J2fFO4E90ym4IJgOGmw/ad2uc0qhwWtvO5myS2WS04G
	 xmqzop5NTkyg+evmBYMeOZoPPS+NAm8Esbv9hejgBGyy06P+1VLMBIRr/7azuMYV0+
	 sIrWrX2FcOK+ClD3/QIRaCbB55O7Omqu61ao6pkZ0OR08hGxlJLKSTPSkIEWBfTz5v
	 +W6mLbUYhr0IfL2pB2fBhaWcPwEYTfsWWUbXY+6X2ewBpSjDfUSz1vXYSzFjkryRoK
	 7g+tT1U50hakRNZtp69dZNtBIuSE7sGEqEKiclKSO/hbEu7SkPVJQGvFYnIgue2IbO
	 GcVJDc8krFbAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6AC68C4332F
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 02:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167210708742.7511.11920894592809266173.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a729b3e9be75cf46cf9874cf4752f5a2b80dd9b2924b0ce65b7905c03069d3f7
Date: Tue, 27 Dec 2022 02:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672107087
