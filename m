Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D8C665D
	for <ddprobe@lists.linux.dev>; Fri, 17 Mar 2023 07:11:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7F3DC433D2
	for <ddprobe@lists.linux.dev>; Fri, 17 Mar 2023 07:11:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679037065;
	bh=7ve4eGtzgIBiBvFSCuf1R8Lh4ZnYLIEPPucW53/9Qi8=;
	h=To:Subject:From:Date:From;
	b=hfMNCfJzxTPQgVcepJUuMCuow0ZWTabLqWa5CsH87rtUY8dGd3zojdl/rr1AMFGdo
	 JkObcDQJJlINLUEsfQY3/sCznfAbl5CpS1XDYEVj5QC/Amnc/d2G2UnnoAKBPKP8IF
	 QLvFSN3dqTITrx+mihoU45P+WeJ9IqSWfTsH7PkCEiakwd4nsCl8Rik0VZd13EpGAa
	 qXR/SIqGrPFPSWm+15+0g59aLhDyE7S/eeCog0p+ZpB0vvfumlcIonNVWHXCkL6qnx
	 Hp0exZNlr3j48RGxaUrLvYcrq5fycdVITl28fy3bNYSt3tAr5ybDOfEiiq3Ub6wKUI
	 SZ5vjDD9PrFuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5114C6FD1D
	for <ddprobe@lists.linux.dev>; Fri, 17 Mar 2023 07:11:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167903706573.14762.16273830209794674489.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5a84990dda000a0fcd832c5f60200c3fad7c651750e553963065e74cab1152e
Date: Fri, 17 Mar 2023 07:11:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679037065
