Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F20B323AA
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 08:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8CE4EC433EF
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 08:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672560687;
	bh=eFQMmk0ZETLgHVPb4cM5SCTAZFn3T1jA2sFWUT0nnao=;
	h=To:Subject:From:Date:From;
	b=TpO1yf+qP9DbeSZ4nyk3wtYfc1sKN+VpioA4q7D7NJzQAOmsB3Zqmdu94Ms1A6qPp
	 57Slx9cbb01KulRuqApycA9K4ZevQurz3sfiUg4zP2+L3uMaeXqFKFAXoUDlVc/CH5
	 JQknZv5PuDDT7HfZqHnCI+GTa4evI5rMCt6fx/DSD/PJ+91Rn43ppiXVxynqEB2+S9
	 pzlWBCY3bbsAnVD4FenwhS+5QOkIm2XFwEXIX4MRqBHRfpX8tGPZgJZIiFveURvH8R
	 ppdOMHRfBqlPA88YQm0/I3W7EVCXNxhVzVfNyvoiQKzWCnX0r0vJ3U03I6HLR3NSdQ
	 q/adwKwcDIsUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 72AC0C4167B
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 08:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167256068743.21018.3295406440850263355.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4eec115edcb3c671017a9c57d639e128b3ba919dbbc4e42ad8369ea39c2770c8
Date: Sun, 01 Jan 2023 08:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672560687
