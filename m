Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F583134B1
	for <ddprobe@lists.linux.dev>; Tue, 24 Oct 2023 13:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cpi6QXSg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9338BC433C8
	for <ddprobe@lists.linux.dev>; Tue, 24 Oct 2023 13:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698154696;
	bh=rFtkRdVE++UedaAM2zhpzBReJMihuonZHlQeaXwlUxw=;
	h=To:Subject:From:Date:From;
	b=Cpi6QXSgATQJlGdhc2eTzUahmiR77K4FPeHtMo/6K4nKA11bLyvkQyGjbHVdoZ0ZW
	 65h++92KZh4Jw6ZYrlohJwLqGe5TgCSujtNJugxFJ7QIDF5rVv34BARHXtfG/UPCR1
	 Ns6oIiWDX81MUXm12C7WEntte+p5WE/Hrz3rVYiOSIjsNyoKUjUqDyktIU6T5EQvu1
	 NLLswr4KzoiFCEND8jISlx3htkiI18JhesoqDeiFuTCzsyt8INlpJyasWmALN2Mqbg
	 ViFnXJQnx+Q61Gmii3Kq56Uv2w5kgDLsXpMhF1Le8Vb3W+YJue8JuQZqnGfQ20n6s1
	 g2PYWykGV++sA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 75F37C07545
	for <ddprobe@lists.linux.dev>; Tue, 24 Oct 2023 13:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169815469647.5898.2447729499476363015.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0863f86d43e424822031e49532e5abe1edc551a7d9dc40ca51817cc81ad4e9f
Date: Tue, 24 Oct 2023 13:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698154696
