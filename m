Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B321215A6
	for <ddprobe@lists.linux.dev>; Sun,  4 Dec 2022 02:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 68E91C433C1
	for <ddprobe@lists.linux.dev>; Sun,  4 Dec 2022 02:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670122254;
	bh=psxNG62XWQH2FmX9+lilVEoEzvDjbVFnPMipUy9l4Hw=;
	h=To:Subject:From:Date:From;
	b=LH/DE6iKK3W7ROJmCQxCJ362whWxH/uvGtZcNBNsGXdIEIsMW8XnFSQ/Mih6ZJ1PE
	 9pfKNEOAxKN3fmYroIc2Rr4tNQh2+CLfRTKmqHjUl3ODBwAHQN00saVtnlkO0WNJlH
	 d0QpRB8cbbNiJ/xvYJ6SFnT8ckpVI5nT94zlh89pKxuThd9EEwtcyjquGJkFDaUifv
	 mXsQ7vnUXJOHgeLfO00p40neLtPnAHwslPgjctgbm3rh0tR7yOZcFH8HHCoR7yIQjV
	 7GK+Zrr0UB10tqLkvEoKX+ZIQ0pGFrKqBAlG8FAokyD1KwNrSC3Wmto5/Dt+PeSPkw
	 lFvtU1uoDlsBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51E2BC352A1
	for <ddprobe@lists.linux.dev>; Sun,  4 Dec 2022 02:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167012225431.3054.9389856345443170910.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f02a772a527bcff1bca946eb3c8104eef869a2a6d1f3c443bdbfad8846d28ce3
Date: Sun, 04 Dec 2022 02:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670122254
