Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B150610954
	for <ddprobe@lists.linux.dev>; Sun,  7 Jan 2024 02:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NcAYY5S6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8565CC433C8
	for <ddprobe@lists.linux.dev>; Sun,  7 Jan 2024 02:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704593896;
	bh=nkPogF5bUXABpsfUNxUw/R5GV1XXKzneutxmGz9zj/k=;
	h=To:Subject:From:Date:From;
	b=NcAYY5S6flH7TAmz22dBsMXElM21IooOVdroJ36vllLMH9eMXLvMinJyYMFeSRfZF
	 d1bFzXh2NaoktUUfRlJ9/P35MnC2bHi263Un1HJVVUZdpX+tfABX/Qy98qAtrFwi0P
	 C2oSQFsBC3+k/EPhiGvVNBYpuOpajJVSuzvH19Z9+PyFmImYYHoKZGymoAN7HwYQsW
	 173c4boSC3NIQ9xTqdlo582FvPG672B+RIAwQbiOvIFydPYc6ys6BvDRfF2x4AO4+r
	 L9TE2UTVJos8s8AVpJKxPzUZ2/8ESqLJ+XKzIMIZi/wr51fYTsQX7kpVkQGlnqsQVw
	 oJiYBTKXMiTMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6C734C46CD2
	for <ddprobe@lists.linux.dev>; Sun,  7 Jan 2024 02:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170459389639.14810.5006365096288630893.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc50c1d9676a008d9ffa0ef1849a87377d33ef6bf795f389884033d6413b6323
Date: Sun, 07 Jan 2024 02:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704593896
