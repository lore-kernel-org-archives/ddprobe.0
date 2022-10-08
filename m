Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D694A10E0
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 05:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73B0BC433C1
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 05:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665205253;
	bh=mPlpfBTUQf3bLFgEFcj1O4Velgfjxnx7WXsSR6yQt9A=;
	h=To:Subject:From:Date:From;
	b=kVkwd7jPDd9WlfVcB6GKlgBNoilyBBGWbi1zSqiziqgS6YxxuDIbhOKFKRI2jD13M
	 sdIHiXUDKuIFaqFTDs/68Dv2kG5D9sW28k1lsQmIsVoL3hrJVSoJOUsvbj1pcG5lpu
	 7micizkFPrEXilEclGiM3+eI3NzikmUxS8EEbcbsjoG/4aU/6LglH+lvkS7AtbBFc6
	 oEwkJTVVVIy2SPb1BaGXsblvP1b0HkBSaVAKpV6uoxDaHsoHo/Do3GKMQSgF88n7Lb
	 rQIpmDEXVNXvEyu5xnBvlC2VjXu5GzasnMHYkU31PJWiG9mmkr4XZI7TIoIXjkBqLc
	 j80iA5xxAGMlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59E91C433F5
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 05:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166520525333.18807.6115968139759196154.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0af8a95d220384cd6567611e6c3b27bb8806b6334df7a6b38072fbd4be54d2a1
Date: Sat, 08 Oct 2022 05:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665205253
