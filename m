Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15E04199A0
	for <ddprobe@lists.linux.dev>; Mon, 15 Jan 2024 20:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HkvJZ3kh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7ADEDC433F1
	for <ddprobe@lists.linux.dev>; Mon, 15 Jan 2024 20:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705349296;
	bh=V7SmPJE539d4zcYCn0SGU74i/Ecnd4YzN4RweLMhr5k=;
	h=To:Subject:From:Date:From;
	b=HkvJZ3khz69vAkq2Rap478pyQcxNgh+F7t1DkzMt7p9HEjdNUwI/6kcZ3PSMSlN6E
	 NV18emkYlZqpVnxBoUx6WQriMqkNVaw1x0+54LIRSGPTN/zz4d6rS1h/T/NJR9B51d
	 T7yqPlDQd3B3B8oaZPKVFXzOSMhc/V+uhQ4k//RVxubp0TaTTTdANQhbS7vnwMFfnG
	 tM4FHTL84cY/CtS8kOrOnquEa5rlbfc7kTLJFQFrkkCJZJ3uhU/rTXNFNt3GOtP7Yd
	 YLhD3HTNcdNGuXvRh38a12iqk8DhtDVwF7xLCF/ELPjA17+BjV5Jdc/smyhh/C0rDV
	 TDwMVYyLBtU+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61762C3DA79
	for <ddprobe@lists.linux.dev>; Mon, 15 Jan 2024 20:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170534929638.16019.6286149806969421250.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47bfd17235850772d4f58b77e4bb348c5ffe033e211cf12bc7f21e7abdc49149
Date: Mon, 15 Jan 2024 20:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705349296
