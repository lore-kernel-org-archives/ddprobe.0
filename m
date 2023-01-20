Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB675BD26
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 06:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80B27C433D2
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 06:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674195687;
	bh=mWILPky0V7DsrtVN6e9ztl2KQpXocIEi49i+mXuABic=;
	h=To:Subject:From:Date:From;
	b=MkFG/XVgNPWJ/y09nkq5j/BklaT+Ycsfds4duewiC99edXg/Ej4t+mVtOfZ3mJ7Id
	 0qppRrKB47ncCZ7MCceORQiOXxie3Q+RHfdWDvjENdqu34pHxuCJs3PHDmSDmyoq7G
	 8qFRMXaXb7Ue2KBFhbHU4j1nRTXcNLBO3R23V/01UWYiSRlHMcQ3X2yMVEvLcwKXF8
	 lCTo5qxF8VJfy085VcznB7mndl13SjtdwTHRlIKQ7ltNKBJHcXIlND9IOmls3VUg5u
	 GW8o+YLlAXFbwggC21v6IH1oZmtBU/yme7tjubQJKb1knhcn8iSiKUkoCudY4/ho1X
	 a1Wsepmjr2whA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67460C38159
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 06:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167419568741.8806.12686729167884731717.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13efb45e8692f3d83a3ac06d254bcf28ec0f7230a3a21ceaefbdf667052b06e3
Date: Fri, 20 Jan 2023 06:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674195687
