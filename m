Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA1F91FAF
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 06:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C580C433D6
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 06:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666075853;
	bh=gcDqD1Y/nXmGp0FICvMjriiMj42xnFK2yWrdO7NDm7A=;
	h=To:Subject:From:Date:From;
	b=LmP6ZGgYlOKTdyqJtzAp3u8I4VUUM8jATQD9Zrn8T906mK08Pun40h+yNn/wTGH2J
	 XmaBSoPccEPA7ZjVObbKOUuFBL2BrJcpVKOK+cTXM+2i266DEwlD+i5UADKysRWWa3
	 Tn4YWw/aFUpaitmRtGjUMjg6O5pKiccylyctiT1shJoHflDPQQ+6wkV9H/raf+HhKu
	 m6PNRLWvtSd0pbFlHV9fkIN+gSR5bfeLuCHzeU/BwaDc4neMdVftJae63LS5h8wsFf
	 xtlnAwI5eSbrVVkhUiSJgW9zre0BdEm0rtNSCscrmtyUNYu0OF6R/VBy69AP9zv5UL
	 RTxK6THmJf/5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5407CC433FE
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 06:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166607585333.7794.13349721799795427649.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd5f06185c0e76e6ebbdb3bf35903178e048841da34ade2f9292da8ccce7dc9d
Date: Tue, 18 Oct 2022 06:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666075853
