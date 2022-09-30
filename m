Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4AF01105
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 00:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F280C433D6
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 00:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664498453;
	bh=7Rg89NerbTFkSbtbnr3w/1Ufyf6W46xnCEgdQKfkgoc=;
	h=To:Subject:From:Date:From;
	b=BM9DQ/lUIGlyDrmujt5mNe9UwJB4QRKrX9jwU4obQnIxhfE3ruE0uVmR5prcMkg6G
	 D7NvcPJsvLGhOljwo+sfXuTvhaYk+B9vT3nFl/VM7HQL/SvMGqtPsX3DNoWP2fN9Xd
	 jQ9legXski09PEZ3+hd5HBAxlLoy/dWW4Q+5+nQopraoPabK1Dpsx9Tvue/KactYAV
	 Igvo5q9pzpphm/1ExTLcs4S1fqKKlYJlOCX44RHBIMnan6OT88NgclJd4JZRjCCuxI
	 ddhMKTMm86CS3GplhA3ftOsebeFRDB90EjtUba3x15xZvkRNVd7vHHCC3yd4zfUS9x
	 MWdSeQC+/gKYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52C67C433FE
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 00:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166449845331.18212.10032857709783026418.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be8c15a4f72f0ebc84951af8673310352e93b56712ad0d50e0d0627b2c3311e5
Date: Fri, 30 Sep 2022 00:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664498453
