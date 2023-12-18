Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EAD272063
	for <ddprobe@lists.linux.dev>; Mon, 18 Dec 2023 20:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="joTG6KuM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7FDB1C433C8
	for <ddprobe@lists.linux.dev>; Mon, 18 Dec 2023 20:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702930696;
	bh=HsoOscxi4MUi4fokl5kq3/0IaGiLbVMzf0jJOaDdc3w=;
	h=To:Subject:From:Date:From;
	b=joTG6KuMxvY0d9TEqHEeXvGPcxfkgz1OK2ZLCzCfd81FOX3/m9eTCtSf5fO2TkcJx
	 QFdWdLlYwGptUv+4qCS13aCSLf9vXt1MJZn0LjoQZ7I6q23OOPevJwzXb9IQtkj6Kj
	 /mo0MURANpDv/tZ8jgRn+kSB2FSyTcATz7WMOjuhaShECsoviCLJeoA3P9aJ6CySPT
	 /uFbHydV1I1p8qfPAhzfwZW1A96DVNhD9ezurw2yLu26Y2XWvy0AQhz4EkMzEdpg1H
	 y+xmjFMTJc9kjyf/tDuXsY8fBSXion/Bdp0sCsGzH+QKjg6fdci/JxD8N+gza4XLSG
	 yIaZjdOYThCUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62070C35274
	for <ddprobe@lists.linux.dev>; Mon, 18 Dec 2023 20:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170293069639.343.3037189952326558790.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce596efa2735cf1f86dafa5a857dbe46616f86ecce45bb6065bb85bc209b7ff8
Date: Mon, 18 Dec 2023 20:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702930696
