Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2D21539E
	for <ddprobe@lists.linux.dev>; Wed, 18 Jan 2023 18:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8715FC433EF
	for <ddprobe@lists.linux.dev>; Wed, 18 Jan 2023 18:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674066087;
	bh=wPwuA6ikdzwNkgLvPuodDQjGBX8rzzIzLFqbMxjGprs=;
	h=To:Subject:From:Date:From;
	b=qqNplmrro9Gz+MjZzun5vu8zWkt61wXk1SSd0JPXipDNXIFVzmFYITGaVzLzGhEUi
	 N1dUqDw00+09EhA//IIlPiE2dfLo17ZdSBOtQKYd43vfT0FpXPYdluloGcqKW3Z5+u
	 lopSEuQYNRErbUgE+vg1agzn8vXULxL0YOwON63Kte7CnCDiXDQ2R3WAeZrNjg1ju7
	 2latXS7DJO0qNdefje6ZYRJO+XkNBpVMMrVUvx6m0B5w3O/Xh7W4HLL8ZuS41wrXji
	 zbHyBablWtXyNrLU2utpWoG4suk6IabHBxTG3OlFm7TESqegJlo0RIFOp91Wvyd0z3
	 5UlRfIf5pUn/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6990AC32793
	for <ddprobe@lists.linux.dev>; Wed, 18 Jan 2023 18:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167406608742.20096.16538745015594790526.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43e0502ea4af9c0b04d6e17d2a96a76c0367ba575f39030f6a94bc3a92eff5c0
Date: Wed, 18 Jan 2023 18:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674066087
