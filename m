Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DCD4A10EA
	for <ddprobe@lists.linux.dev>; Mon, 16 Jan 2023 04:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 92407C433D2
	for <ddprobe@lists.linux.dev>; Mon, 16 Jan 2023 04:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673842287;
	bh=DurQzicEONJvh5fCgIYa0JSAD9mQmWIS6+Tv0lOOzq8=;
	h=To:Subject:From:Date:From;
	b=h0/EnFrqHBSY2Sr+EEYjmL/nXf8Lp+qlkkdYf6JP/JzeiCcpkY01jJcimFRXHsFN2
	 Llef1z0J/grj6puxa2qwmc9pjbwPhgyeL0Rx1kx9UpX4DHwHQTbBOmx1totGV5XMC7
	 3aeRckDp/mGD3wN+krq889L0YJqZVUsURO9fHR/Xwt3FtIU+Uaxot1uWS5jIceH23H
	 28u88FTWDlK8+lhA5v0f1ZukxZFO1PIY7gJATecNmvdWN242rVpSTaQkrYKewMQp3F
	 HAPGridy4HpKMmzO0CHz2mEXLjW1OlOYeRPAieJGKrWP33wGrm2f5bvOFoazOltqMu
	 Fy6P1ZRBsJc1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7122AC54EBE
	for <ddprobe@lists.linux.dev>; Mon, 16 Jan 2023 04:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167384228744.1769.15070561256311686098.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3fb1911ced93b789b662eb4b57e5aaa16eb570e012abd7e77a2743c405c60486
Date: Mon, 16 Jan 2023 04:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673842287
