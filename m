Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D684F7B
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 06:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E61FC433C1
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 06:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665729053;
	bh=FBdDwtgj576ugIvvjMOZDxEOPDWR4SZmTzubeQWaku0=;
	h=To:Subject:From:Date:From;
	b=jCCTYcXEnSGH1LgtHEBnPZbgM7XZUyjvwmoQ904tR61sNZ/jQPoUnRT5BPt9Tq0gZ
	 3LaWGnvTFXfhB1SWbBmTBr9NPaqh07sUMWptxGOsF+82YVYMvtXXvqdrXTIRsPMbXP
	 Nt+Vs09oPNt42IkyzmK6Pv25dfveVAAvrBy4Vumfd/8BDYWS9S6SutpSDqzutYtFnD
	 mSuuk+bkjR5+zLzJ4i5ynKLNgJYlW9V3Cc/NewponDylEOcS+5T60R+J56x4mhgKq0
	 OU9LjblN1gvlQjcJJjnJeJae+TG7/gvPqPlvzJTdkn3F/DqY7O8xp0Kz3sdflc0ZP/
	 1A7zsw+pRDsfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FA1AC433FE
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 06:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166572905334.5041.7275896615449497207.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 470bc55aa0d535f19fbcdc3156d42a2670f8109c8abf874e1f0bb9b0310b2a0b
Date: Fri, 14 Oct 2022 06:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665729053
