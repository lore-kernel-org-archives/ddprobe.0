Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0969468F
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 17:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 722B1C433D6
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 17:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661881253;
	bh=caU5BoPccL/ZuGjpMGS6rfxQUpwGcWN3vLMnPM8LZ6o=;
	h=To:Subject:From:Date:From;
	b=gnlQN2u3QPxcFIEXW3mmYpkcKVInVV/3p+icWKCkLMX6Asz7tWVLwrkmUv+BoLhbE
	 AkF6t24V/kdOGBAsBF0jm2r3KjkxwtJYijM+6aVeOyFzxMFwuDDCn2tuubIuBU0LzV
	 Lhyy7Sofd+jGeWPv9/TeF2LjURsR2ZesStqd2piJxNKYZ9SwwZtYjlrjmVWc7WyIbB
	 lbCCJmXT7mtXGkSZPDuzR/mnKOWQ/7SCqJYhJtny/o4v48YF7RqHl8Mx70HtVV2hiO
	 /UDSuHqQck5W8dSaFiwyQnNZnF6BHpql8vDXhOecSf490EmBwdq/ckRSFNnDUVlYDi
	 f6mhPZ92StXtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54B4CECAAA1
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 17:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166188125333.13206.17059893731903311757.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d882ddc89816256febbfc1a0007541945c50f4fa2f7fed3420f32fa034f6b73
Date: Tue, 30 Aug 2022 17:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661881253
