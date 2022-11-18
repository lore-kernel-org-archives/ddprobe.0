Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D90BAA486
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 21:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82C96C433D6
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 21:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668805254;
	bh=iDEXtTPmeDhADYU9ggTFwCoE/P7dbJpU3Xw7ljCidY0=;
	h=To:Subject:From:Date:From;
	b=GhrcXCtYWMix7BiQI0QLD+SOVhG5SdTVCJXTCVqu179nCI7sydlpBbe6pAxyZ3gD4
	 3xEvr1rbQVmtWZnnrSxZZvljiUU+58eq/8DojtzDJVSiys7ftAUMRk9q1tn2HdozKn
	 6ys75U1oOpv2PdOp6YcMBLejvvWCfPTWmRmMB5b+rgf5gMgpDowj5AXV1Jnb8D3+W7
	 PjLLQlXDEEtcXv3b4SY5GzpCPvbVyaBob/PP2e34F5MS+HXp7huQNA0/kKc7UIKYqv
	 anwxfGywn1WCl6hPE5DLfNoJB/EV93NhT2i/8nOE6TWypAPYJWs0JHej3aBOtcI6kz
	 5a9kIxS/9Iqng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 503D2C4332F
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 21:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166880525431.31774.6411006679009960635.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 799a0e193ddca30ed4a0251ec1f4cbfa05e2db22075b6672672fbc80ad1fac16
Date: Fri, 18 Nov 2022 21:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668805254
