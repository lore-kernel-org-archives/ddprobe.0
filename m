Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15D566AAC
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 23:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC6F1C433D2
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 23:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672703487;
	bh=6nESNeR+gI6OYV14TdQe5fwcn5jdnY5RAsG3XdbOTA4=;
	h=To:Subject:From:Date:From;
	b=qA998zp7BzzgkBZrdZ62Rp+Ivv59EASQ7NxCHSCGT6cwvrekT8Z0nMlICA9l5ZLeA
	 cPyxCaqgork13k34Uo976DkVhJjuvqLAzCW4Z6z/0bThWsJLQ2HuoaoV+RRn+jR/n8
	 DhUaeFU1/ZMHqqj5M1KZhyLB8z9/UAYWfq60zKIIDwxfmAaKmJfxSphi/3TbAQqXE8
	 r6b5UQclCJbcblDeokTYBdV92rPwNuz+eO3203XZLGXW2RPVPed3cSj1j1nToxKoA0
	 L1ZdX1fHZ/lslVewdSnUDfycd81/05XdL1ljYRimg5KBZluNS37yj6pHgqFBnP/4+2
	 2pVZSFlzlyHUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9680EC3DA7A
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 23:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167270348756.24631.5704599754163687528.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 131d04b5a9c98835919fa5e257512e78622a10dff8ac471b425621e749635891
Date: Mon, 02 Jan 2023 23:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672703487
