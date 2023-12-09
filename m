Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19F4F79F6
	for <ddprobe@lists.linux.dev>; Sat,  9 Dec 2023 18:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kZeLA2B3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7DB73C433C7
	for <ddprobe@lists.linux.dev>; Sat,  9 Dec 2023 18:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702146496;
	bh=Eaz6R0i3wl0LLDVIrNdyoWCLhKHF9M3ZzSbx0B+piGA=;
	h=To:Subject:From:Date:From;
	b=kZeLA2B3MLJbVAVJcNqqGx7bWzk2Z16FCljGPqFF56h4rV7b8A0iEz7YRblHh5YRy
	 v8hd5unP8JFla6y/olEGEDkw5JSgn/HTiVzSxWSNnEjqb146kEpmKAwDdZebZU+jX4
	 q3vUYFh2qLayd54jaHvNpwk/htE4pdzgevPs0LzlKW88yRmC156VDhFbYx3payq0ih
	 MvYv+jz4NANLRwq3svNHeYnEtyaSRwWDrDj62MxVwkRTaaCwFyag+y13ljqOIl3dWk
	 QNPqR1PkeOP0d3akvEHxkJzuapKBtCMZ6Hm3e9htS7JSSRayogOGAhBzAwmJcT4Xl1
	 H0pDXylnclU/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 623C9C4167B
	for <ddprobe@lists.linux.dev>; Sat,  9 Dec 2023 18:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170214649637.25344.11680948491644493695.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6560c77508fbd3745793aa4a8fcb18245d5e3c3afebb67440768881ba37783f
Date: Sat, 09 Dec 2023 18:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702146496
