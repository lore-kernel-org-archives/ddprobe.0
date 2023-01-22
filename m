Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41E71138B
	for <ddprobe@lists.linux.dev>; Sun, 22 Jan 2023 22:32:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD47FC433D2
	for <ddprobe@lists.linux.dev>; Sun, 22 Jan 2023 22:32:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674426725;
	bh=xnH494G1hWktJ3Px9B/2Aj4mWo/WZTXYSXtRUv2fxfc=;
	h=To:Subject:From:Date:From;
	b=hT/vwHszMAALYdENzC9D7nTTtX15Ndw7TLTUO3ZV2bCyi0DG6qNQT7WzUWE1Onsi/
	 JAKtj1e4s7aCi/c6sHQS6IG2WRlu5eM2kkWTxbpATxgpCuFcqzSOt+6l/S5YcIRAqE
	 +WDi45V8cdNzOoQ141D6Ttifnip59yCZbmGL9tS+xBTWD/mUIPM4O4AwO/DD3ZKWHY
	 MR34PoYiRRrFo6dy5FQ/ra0lIfJqFVkVuYTngjSgOQk+8FzrlWFxHYMOBD6D+AfHxt
	 Rq2vz/DU7O+/GZxXTmwE0nWL5pQQEpUFXSWxz62w44tRXXoBUlAOrsfVnTYLypfaGT
	 WyM+ZRD+A0etg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2000C25B4E
	for <ddprobe@lists.linux.dev>; Sun, 22 Jan 2023 22:32:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167442672576.31806.15049674295439687992.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9249c19d9c42a80dac4aab5e91d01ca45b948b00594c67ec814bfed2a6e5918
Date: Sun, 22 Jan 2023 22:32:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674426725
