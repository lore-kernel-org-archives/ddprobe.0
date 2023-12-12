Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00FC67F5
	for <ddprobe@lists.linux.dev>; Tue, 12 Dec 2023 08:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ivSXzVCQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E8DCC433C7
	for <ddprobe@lists.linux.dev>; Tue, 12 Dec 2023 08:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702369096;
	bh=tPLGHinf4DEYEZRSczJWrwe3FCQbKOkFWSjntKS7gnM=;
	h=To:Subject:From:Date:From;
	b=ivSXzVCQRZ8sVWhj8ij20Imeu4r9dnykTID6PUYC1Q2FQfHwnlgt/r+Bo5tkczdjJ
	 tGYbMeZkicBYcMNBWk/iBKC2RMPYhItfjXskr/YR6nu7DtCxb/OGVqyVXRPTzdGGRM
	 T9+kn1CvzxN6jZUfgniDe6wQ2cP9yCYXa+jOFqQv+3EPIA0MWvCIukqNmrg0hDwvhj
	 XXCCes/v574YjCLyAWKEEJzZ7tGAIWFiwJQUB22GlhJMqyvaOqHDXzvHddAK5vogRU
	 eqn8vCuOY9Si5qdmA3W67iCzJy+AGjqxwxu0+6pIuCSsfT/YlCcEZKJD8EOzF1IX/r
	 9chZab2hsA4RA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6474FC4332F
	for <ddprobe@lists.linux.dev>; Tue, 12 Dec 2023 08:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170236909640.31011.11100485854810866362.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a74635e116320ceac95a4c483ce2115dc0394f26502d89358508bd74254830ed
Date: Tue, 12 Dec 2023 08:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702369096
