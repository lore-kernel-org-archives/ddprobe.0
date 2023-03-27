Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AD3033D0
	for <ddprobe@lists.linux.dev>; Mon, 27 Mar 2023 20:33:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDAC0C433EF
	for <ddprobe@lists.linux.dev>; Mon, 27 Mar 2023 20:33:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679949185;
	bh=/ISLW7a5hjrqetXqaaBYjnfnbylHinE3wFawDMuXxc0=;
	h=To:Subject:From:Date:From;
	b=BJfFCxBz3Qji+qzPS592kQap8vN5/AwsnhklYKfu1I6HWTEfGXnvTHCXqBksqmeAI
	 zHgi1eRPRJhTt3bsrB3DKHCBSxhrYQQtPJaanOM7AMWEQJwgi6G5zf0KWS10fHlGbX
	 a7qY3mBwoHMy7Wo4SpPCeOueEmoVVRcf36+TQ9b6r867cNcSydfx8IAaGJiFeqAZPU
	 MTw4C0I5lJYycmopl1Vtu+Ec5s88LvCPFs/7r7pkSSBAX/seRv6xO1Rf/UoeQLVoE7
	 ghxivIBNRyFhPDLXuW+tDPR7FdGNiO3pEM5yivHPEvxFDWPvycFmgxOwr2076niFeE
	 F07tit60LOjKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE196C6FD1D
	for <ddprobe@lists.linux.dev>; Mon, 27 Mar 2023 20:33:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167994918576.7427.5587498614324790148.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47a565ebfa9384936a0276abb20d9d6a3fa68b0553a6ca9fa822eb453b9f4c30
Date: Mon, 27 Mar 2023 20:33:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679949185
