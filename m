Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE02C2F27
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 15:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 99C79C433EF
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 15:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672931487;
	bh=FqQhtQdY+C9qlyJOdDYfpFFruCHPxP5KBSXuY3VzxWA=;
	h=To:Subject:From:Date:From;
	b=FVPg4QmLv180vTDMyPWS0wzigJebd52lqZVrfdmC87uBQNzICi7JTRaczmf56kfYS
	 U58DigaCW4Smn6eit1p7lWQcJJinot0nb5kOKswEnab4NwE1CHLFSafISuSDTk1/kA
	 rl/ZcGQTGlNIdOr1bZUPMSDfIUhzaVigVk7nUAzB9R0P4gT+XefbqNaq+wm8RqHl+Z
	 xpsQaTwInbSjgdzuxb6txiGEQ/+mGTYlJcPKh5Y4wESlUascPTCG5Mg0Q5K4jSZSLW
	 av8O5wDoEb9pKlbr6bK3z8F/pHEFHEyDYh/tbfw/HoUNs3AK4Hv4pNBENYFBM8hSXY
	 nYNsM1uXHGAFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7D4E1C3DA7A
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 15:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167293148750.13924.18218873374680978757.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3fc2684e289be3a77656c3221ae31123d32da48f542220e323c5ab126ae1e9b7
Date: Thu, 05 Jan 2023 15:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672931487
