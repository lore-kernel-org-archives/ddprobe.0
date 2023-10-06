Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58D0F273F9
	for <ddprobe@lists.linux.dev>; Fri,  6 Oct 2023 15:27:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="msFadCIP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3275C433C7
	for <ddprobe@lists.linux.dev>; Fri,  6 Oct 2023 15:27:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696606028;
	bh=9coJFCTNZyWJimO9hqpiQAesC5qpvzSLM6R26q+kS7o=;
	h=To:Subject:From:Date:From;
	b=msFadCIP/ZirlGMRiKioK2gh5+CDV2VOrGqLs/9kmjTuWuz209wfNurLbDHiXHMQO
	 mupl+bEdmOvDm+pF5z5EBWiT4RbzNhAtbaL/Ebgzf9nVcvTkAgtBZIKmpou0efZQak
	 tq0DWdil2fmRXrWsdSJ/H/BWzB+uHesCtUgXHP+pDEUSzhpVLWP5JLqEZ84aXOAbak
	 kC6QLwvaXLtMHtRmoiktaKM+TqI8FyfeVDpuirCshsl37DqFrFzRstjnTkDqvClTaS
	 0KRf69vLji9Sts9gC3j+QmigwRL+cxUGj2cIYu6qrRlrb1zKmRrZvXr/SQNEL6V6Nl
	 KwK/uDjbJzukQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD32AE81E0B
	for <ddprobe@lists.linux.dev>; Fri,  6 Oct 2023 15:27:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169660602869.27362.782585107134504728.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 851b1749d9e38f20cafece17690ba43c1ce678c052af4e2509e13be7e7c37eee
Date: Fri, 06 Oct 2023 15:27:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696606028
