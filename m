Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0CAC381
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 14:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7AFDBC433D6
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 14:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668867054;
	bh=FzqkzLTjAcXF3vBYW+hkJnIG5KVouDRYKLvxFqJOK2I=;
	h=To:Subject:From:Date:From;
	b=A+G2PdWquMp8HtA+9Vk4glAOEahmJR8vc25P3qI1AkmVjJvF5PBZgbwwyprqocj3t
	 wG0H2V8/SqPCMYRkGVX25LIxmiNAuaqiwvtSXT6g2b7oIqDed2US+FXbhOgIoCU/5O
	 h6k/Xle9gu2Fr5qm/E1fk9xzQTKm3Si3/sAerrZyeWi2fTVLjPmn5vr9bZXdw3hsn5
	 eCLsiqZU5bwnfh0h9QdLWzwt5lhipbABUsl9iMSI6gdh9Yrl5Gy8L0o6q5zGVZw3BM
	 0+C2Tx8aSjlnXCU47mFuX/czl0MiVcLmjAOYbhJRacoxRQRK4wDEWVx+kWEB5qArWT
	 TSKy7JI6tu+zg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E78AC4332F
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 14:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166886705437.31309.17682997494363703348.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43735e049cefeded8a0e0fc88cad13800283803f14f6c89b9e3a1c93fadbc29e
Date: Sat, 19 Nov 2022 14:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668867054
