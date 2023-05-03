Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32CC31870
	for <ddprobe@lists.linux.dev>; Wed,  3 May 2023 18:50:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD0E2C433EF
	for <ddprobe@lists.linux.dev>; Wed,  3 May 2023 18:50:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683139805;
	bh=zELNK4YtDsaCpMRgSOuvhQUeKundIfNkXg8qINPYLcg=;
	h=To:Subject:From:Date:From;
	b=HenFyMaj9lbmknfo8hJ2MgOxSZoZQISkvNLrUXlVbWhIoCq0bkkTqTGusH+ee4ETY
	 fd148w5LBkij7G4KknXWZ78AjKkyFslY65DbjkY89hiE60kvAKOEHj0zkAMUTX8tLo
	 DhOfGglYl63J0TxFGwPC4vcEgk1fzKu49Mdkuj9PyktTEb21aRuysFS/2uCgaEp+ik
	 UgOF1PRpb+qpXQG2XfkBc4unag/QiJ1f0r4CrZLhpQBzsEJcCajDTz1TpZDgPM5Kjo
	 tzarB59NYpVYsgh1QMOyJ1tXvSu6p1J+j40DreSgZNrBgkwKXoIDFBaJh+p1HqU+p6
	 NhC4OqFKkn0Ww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B863CC77B78
	for <ddprobe@lists.linux.dev>; Wed,  3 May 2023 18:50:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168313980574.2205.5095982924340890792.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a60bf2b9e91f94633d302f22bbf9157a1b84cf05820caf8914e667e3e9f32da6
Date: Wed, 03 May 2023 18:50:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683139805
