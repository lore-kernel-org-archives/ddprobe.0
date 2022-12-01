Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B092C1116
	for <ddprobe@lists.linux.dev>; Thu,  1 Dec 2022 11:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6DD29C433C1
	for <ddprobe@lists.linux.dev>; Thu,  1 Dec 2022 11:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669893654;
	bh=aoQRqf8iwyOwcANbz/E87rTtELVH0rYVJrl8PLUeGyE=;
	h=To:Subject:From:Date:From;
	b=FELILtchQfgPLUmt0ZROLqigEEVwCTXj3+AbgqklIT5nYdXgt9tYpYmMBryTEQ3Dl
	 Mihy0igVHaQeW97fkBhVPiyQ5oVgYGcrwOSz1lvGO2NEKNQNfc9Vt6qpzeClmQThvB
	 6Zy5TLlv1TDGFivFxL4dtBHsyh3uT+me+o4k8c+3pfrHc468wc1QY8DH4R7XTUkTza
	 rxp6APz95Tj6TrXgagEPhGPHh21rfKzHOzJW3kGbSiHJPu8jQ2sZE/TRPbfEl7dE5/
	 8PhMQaH1jfcsELhlFaqdGtLLE7Knxm2oao38xcdTp9eJDnLXden+0XXHSMnAAHPgpW
	 nuKyxs13VCkhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5316EC43217
	for <ddprobe@lists.linux.dev>; Thu,  1 Dec 2022 11:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166989365433.10327.8782831032082781047.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb8596ee2851278e2587d3b343c807289f7ed187122ad93ed7538792220e2988
Date: Thu, 01 Dec 2022 11:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669893654
