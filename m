Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF2163D6B
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 17:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80D6CC433C1
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 17:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665769853;
	bh=m3E+O7S6rk8NKG+0d0IuU+YywJCvCbXggMAh6Se2Xi4=;
	h=To:Subject:From:Date:From;
	b=pesN1g4MV9dtMNnixV+9GtJuVqBORwvDBvEPpjXUWDR1PkFEqO3puvuH8BeYJvM6B
	 hDOTj9fHV30EiYmg5rLBTm74Wgf4jkPkRtKfY/+YqRVw60smIaKGoOWWpYJTrn1rLe
	 le1JbgnxWS3moyHhszlkpRri6yKHHrj/iyafYXRp2g/dVjTXJZH6C/40L4ewwNwaZR
	 0IDDXN2XNRJ8qogNDswfZKrZcsoLfwjXbJM4v00e3y0ZvsRuWZ5TqfbmBx/kCSisRw
	 xBW9VOQCHEJTkhOZNUPAc9+UaOLAC5y/is8tM3xhijjHRRxfAJeliWbLtomO/4iz5H
	 pB3aR7hNFDetw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61A79C433FE
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 17:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166576985338.13375.13928853470533219794.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1238c7a893b9ecfd3546c1779f1de2ee7812141c16bff59ef416bb30373d1bcf
Date: Fri, 14 Oct 2022 17:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665769853
