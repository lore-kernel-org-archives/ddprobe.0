Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B7167408F8
	for <ddprobe@lists.linux.dev>; Sat, 10 Jun 2023 05:58:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 2B49AC433EF
	for <ddprobe@lists.linux.dev>; Sat, 10 Jun 2023 05:58:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686376686;
	bh=NMzrJ5WvRLmsH6euWhgoSFFJs9ZOntkv6wqk48O8720=;
	h=To:Subject:From:Date:From;
	b=Lkt4umc4YdwILkkhMhELTgRTGVJP0W8jBDiW56xxT7mQ4HhjgBiP03L9bISNugZNz
	 KBlYMcMpu9HKcGztx4Axl0CZpUTsDY80kAjyN8ilbOfPCOmk4/y2lnUHO2HQAhyY/t
	 l3HQ/rsoGQNqB53sYL0Wn9CbE60vQUulpptNFJNGSVePhguylzRahuD4G8X1JK2hYu
	 +eujLIoOXB0U5nkIpS0mOFyny9obPcQx6hqbIC5qTRDnBiY+AuOA/SHi26v2CnC3SE
	 +dWUvi3VHi02oSmE+jUW3DUSKpFq1KzP8LoFM5jqaKhwrRrQ2IwEvSOFzaJu7TlUh2
	 3wKNwx8NGwpCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EED52C7EE2E
	for <ddprobe@lists.linux.dev>; Sat, 10 Jun 2023 05:58:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168637668589.15287.2969129033985701624.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a4fc4f321827f3c50dbcb628c539f88335d0cec4ca0ae041b6ab7665075eea2
Date: Sat, 10 Jun 2023 05:58:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686376685
