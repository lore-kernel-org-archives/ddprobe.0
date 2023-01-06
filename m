Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFEA57B
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 04:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8CF72C433EF
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 04:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672977687;
	bh=hxb8jxntzibfVRj60y53eRk5zABfDDuL7OMrGuVXuWY=;
	h=To:Subject:From:Date:From;
	b=r1aRSOsJZSGj6Pu41/KRDfJQh3MFxiJx92F1Y0qAKIM+p3/pdB4nf0szT48kaay06
	 bfEKNHLLzetul/QsNrqsqNBrDTERfPOnk/xQ/UKDLsBe6gbOrSh0m5jWJfY5jUR5ye
	 ZqKbp6KzIz82lBOi9A9MkoGOLntYDXmpo5jgAW4VktOzNK//+ht0sjUqw9MM5DhrE0
	 l1rjlgjZ6Tx/jFICHE7HqMOmutdLtOtt4AZAklgzPcuwXIPntNuLyHSliJDpplao/5
	 wxs/yMzVLZFdjAlLuHCGYAgz0HnLKfkKDrPcHs8rFoJYe+m5sayxjhbpjapoFvq9aw
	 kkt1qrpk5C/Cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6D285C3DA7A
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 04:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167297768743.9971.11851069170372925989.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 009e84466767c3e39c96cebde722d547bb43a0790166b2f9df8ee1d186afbd3e
Date: Fri, 06 Jan 2023 04:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672977687
