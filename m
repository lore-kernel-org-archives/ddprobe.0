Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B3F15EA4
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 16:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6FFE5C433D6
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 16:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666715453;
	bh=XP+YPidTSuoQHGO0/kaOnBlGJ+cmipjCek2BwbWBGqE=;
	h=To:Subject:From:Date:From;
	b=Edu4TmcI8hNEcNWpnvre7KTzxuGTcrvUsDFu1EQDv/pxJ0F931xjUQv4INN1Mw6sa
	 bKSvX1TcJy/STiSOTCi2+kae/JZu/Kt7JUCN5XgHMmCW2JRFFUQoqtAoT1X8/O6Q54
	 Kmymk7VL6zQw1Ge3yp+10WeRUsitSQbRG3l0C4X7LH0WNhH0DWoCVNqwVFTdUcoG4u
	 CR/3wKZxrEH6Q5kZA3bG3jr8DkVB/EfJtpwOUHETHHbqeSHCyITrhTNcqd2h6M+0IZ
	 MdIhPmotnhNnFw4UMR/Zr8r2Vbo0mzMlqHSkzrYM26tjGFwvrYliU5FZdStKVcITP9
	 neil1ewWUS+ag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52E20C04A95
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 16:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166671545333.752.14719901139797129984.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef309662dab3d5db840fc9f6beec05aec13a93d2eeeeb9b73a2aa39cbf2878fb
Date: Tue, 25 Oct 2022 16:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666715453
