Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D9182F531
	for <ddprobe@lists.linux.dev>; Wed, 18 Oct 2023 13:08:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ofCI6a5Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB714C433C7
	for <ddprobe@lists.linux.dev>; Wed, 18 Oct 2023 13:08:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697634492;
	bh=c2IFrTMzzhDCKyRjOw+GCmzx4T0CbweSQ2FQ5LYr3xQ=;
	h=To:Subject:From:Date:From;
	b=ofCI6a5QzkYP2YRQBdckAIHSgCK/UU05joTTAodm3RoQGsZYjtGmZAyhXzDoyBSlG
	 V2MR/Bj9JqsUpDMZjtDZXCD/lfOmvkihfifH579KhNP8z+Nju6OSfeo4FoTv5yb+Z0
	 MCvrvbXQSZhVlWr1nYs+XxkHI8n8i7WPZgvh6wTrMaY2QmkN5LrrccWkqD8N+eXcdC
	 NwWD+2Iaw/rrIY79Gd4k/ob1kIMa+bxFkX5Jg8AP44WGYGBSleCIOevtLmdGnblu9n
	 ph62posjAdfr8nlHVSI+EKVtObkYVzZsO5z4zw9g8Twf+0R0BJ9lgvKQlRuY+TeXAL
	 IWWhKm3ya+ytA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2D31CDB47E
	for <ddprobe@lists.linux.dev>; Wed, 18 Oct 2023 13:08:12 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169763449279.6345.10736929822157557255.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7556c3553888a712db615212d2dd03645afc986ef529c3adde120228ba00617d
Date: Wed, 18 Oct 2023 13:08:12 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697634492
