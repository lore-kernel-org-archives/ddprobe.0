Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC695AD2A
	for <ddprobe@lists.linux.dev>; Wed, 26 Oct 2022 19:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7DAB4C433C1
	for <ddprobe@lists.linux.dev>; Wed, 26 Oct 2022 19:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666812053;
	bh=cdH95ilLtIq5XlvsPZNWkR7WevFqNmuhCoe+NGHW7Ms=;
	h=To:Subject:From:Date:From;
	b=oGnqvOGTtj9gJFd/svU1Sfk70XNWKdUDKThVpFjNjlaDTnl3/+YTiTQ3fshtocF4Z
	 a5mnssP50iHmMFVtqpEL/xLB83au+kEYovyiq6n1AaQOLlhUqH3JXoO8r9hO9pcPNO
	 dR5sAVG+R3MUe80XQzBHNSepsRvws7G7ZCri+CsWHEJ2WFeNwjWiEx5yBeVriWsMvl
	 r0Kk8/2qS0Sj7iA38+b2ZxnU/j21x+pqcLSJcoD5dtQhwMwHoesrqrvYzgVa9S+K5Z
	 eVqMrk2Buscewo9QWVAK+FPlenxQOfd1sYixzeByiRfCfX4XydhfHHIF7nkXhlqdke
	 e+z4orSUI/s5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65453C433FE
	for <ddprobe@lists.linux.dev>; Wed, 26 Oct 2022 19:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166681205340.20088.15308515654387447135.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10bdfd65caa031fb0dfeceaee9ff709980ebdd567599d7200a146ca6e3e604cc
Date: Wed, 26 Oct 2022 19:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666812053
