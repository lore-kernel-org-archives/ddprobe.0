Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BCBD015C90
	for <ddprobe@lists.linux.dev>; Tue, 22 Nov 2022 20:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7AC1DC433C1
	for <ddprobe@lists.linux.dev>; Tue, 22 Nov 2022 20:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669148454;
	bh=DhGd3rXlGM0QIFS8LqkvryX2OJHek/kApsTf347cvbk=;
	h=To:Subject:From:Date:From;
	b=Q3afKOb4nZOUFTW559yUbwh64N6qh8gFWN7lJiLxMIEbeCu+XomR/YhKXOcxNqnMz
	 NN+y+FGLyLqMD1LlY8pjFZmverWuMe9HIQFkokZOMYdf3Q95hCZdjRNS5JfHjLg/hd
	 DS0ABpw2RfxrJUQVTTSdIIoPDVkh3uQ3zbuTha1PcTTujGE6i0ZHyr3z+iw6WfcC5W
	 mMmtQEqBCvXTTj/DN1DV/RzsWWHSGBrFFeytUo75hI1DfLwGkkXu+2fgWqKChxtyVb
	 RcG4+iU3WwD90mUvu4qTjoKu4HYOvESx1DXXQFN4p2qyk5zhHStDi1na5U0FcMSwsy
	 7WgszmAnP80cw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59D7BC433FE
	for <ddprobe@lists.linux.dev>; Tue, 22 Nov 2022 20:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166914845436.9600.2051040229026754225.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9489a5e859a810ea00e938664a2cf664a02cd433efd822e55948c206b38d881
Date: Tue, 22 Nov 2022 20:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669148454
