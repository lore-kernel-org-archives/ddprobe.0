Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 700CC33F1
	for <ddprobe@lists.linux.dev>; Sun, 11 Jun 2023 12:32:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EDD8EC433EF
	for <ddprobe@lists.linux.dev>; Sun, 11 Jun 2023 12:32:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686486726;
	bh=B/0Kvl2UJBYJ2cNXXYsHbZ7gzGNC93MnRbb6w896G94=;
	h=To:Subject:From:Date:From;
	b=U+G9NPiRfWiCXrh5IV6gxqt5hI3cia530CKfdPhN3yShMn/ku92mTnbo8R5SvaZyV
	 m1tF6DqS4AutZkMYCySngx8PMGpKk1YT8V4PzSep40UZZBb9hHXeXYm+HePR7xPe62
	 nw28I3tzP4X3Gq3t1Rnk6wZBx9PMJuJekCtuPjQ3YbV+8Q0gEo03GSDtjWKdmHy1YY
	 LlM9cxkgx284wgHBWrLnpEhnm8JiYLIGyL2HMfr28Q7Z5CviP/Ngs/5YI+SXBJW7kw
	 7Z3xPh7lm5QiTZPHEtoND5rPujWMDJf14Lq51FLOsD9vFyIeg2fiIhAq72aBZjq7Bh
	 dRMS3V85Ree5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA233C7EE2E
	for <ddprobe@lists.linux.dev>; Sun, 11 Jun 2023 12:32:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168648672581.4640.1999179354745737652.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8947943e024c96393501dc9d930ceb0f0aa9c07dbd70c025869e67c3f2d1d44
Date: Sun, 11 Jun 2023 12:32:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686486725
