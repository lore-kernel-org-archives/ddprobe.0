Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1588436B0D
	for <ddprobe@lists.linux.dev>; Tue,  9 Jan 2024 14:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uQ0IJqiQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E94CC433C7
	for <ddprobe@lists.linux.dev>; Tue,  9 Jan 2024 14:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704809296;
	bh=L7C+1qhPe5riPI+PjKaNmQxtaTkqL1liScQfy3OuUWs=;
	h=To:Subject:From:Date:From;
	b=uQ0IJqiQzcJ9MacHpHr8fyKMAVsAK1CyzowxQcWUf4yfGKtu7pIVmCNkD0F5qlnAB
	 y4aMEeofv9AlUZqpoBuW+YeX/zXMejmAPaRLKw/Y6/988DIkR3406Hi06wYq2vFyWP
	 2wJbTFTdt3nOHG7fHGSTwxQbo5Gu9mLgVwZruKMiuqQe2GWOggVb8ejc0TUvStNI0e
	 eoZq/LOR61DSz3ZfIA9E7z9WvFg5J2kchLDONJ0MJl0MKmMUzoWy7ae/kiB7FkQgdE
	 e9rR0saSnTrEOE9PgRWyNrRF71tnXn2+Fq4cT6mMBy8jzh9JNGynOh0hPHFaFN/4RN
	 8yqOgI7vzEhGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6099AC46CD2
	for <ddprobe@lists.linux.dev>; Tue,  9 Jan 2024 14:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170480929638.21745.581706176541980209.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 513b8ff9a0fd165ad62edafcf9c25417ef2f4e007f2079e1c9f80ba0f79fe0ac
Date: Tue, 09 Jan 2024 14:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704809296
