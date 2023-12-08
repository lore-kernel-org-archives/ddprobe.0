Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 111A31A727
	for <ddprobe@lists.linux.dev>; Fri,  8 Dec 2023 18:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="osvLnZCQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 859C8C433C8
	for <ddprobe@lists.linux.dev>; Fri,  8 Dec 2023 18:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702060096;
	bh=m8iCwG6lafJQ0k6xQRbDKZjN7QCspaeLq64eKyXaJ9c=;
	h=To:Subject:From:Date:From;
	b=osvLnZCQAS8+6DPbsRJ64DJygfYqATRR9fxGAicrqkxtVLmAhpJAD2m58qyQCoTMi
	 8Y99RcMQUIbJKKuqmH/Nffz7K2P4XGsqLeKsOAJ1WXYg/uCYS6o6y+Dki4Uncs3NZP
	 osJymDhnCvEna4n3BZMqlNiqVJjUJEBok3S2/wW6yUGP+MUNtCQ2mGffMGMeBOmnxF
	 eU4OlZHWBX6RLz6ksHn5jPYyLZ77S+zaYbOtCGiDErl+q0eCHa6uDxyNAAnkXktjWs
	 U7L/71Tp5g/6vugx7/GCN2mfwwRU2fL+rVyGGxDcyN+jnm2PD+uyiYUFyMUmHrRdRq
	 3cIKaQSuOObSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6911FC4167B
	for <ddprobe@lists.linux.dev>; Fri,  8 Dec 2023 18:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170206009638.7022.11295783582565401555.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c9468a62c91ce3d5db88e5ef67370a69a5e15bf49d475d5b280e767a4580a9d
Date: Fri, 08 Dec 2023 18:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702060096
