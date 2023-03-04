Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53513184F
	for <ddprobe@lists.linux.dev>; Sat,  4 Mar 2023 13:07:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id ECB84C433EF
	for <ddprobe@lists.linux.dev>; Sat,  4 Mar 2023 13:07:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677935226;
	bh=bHtdt5uRyQVvVBFfPuHv3Cfy4JC2joAIFMBkx36pv7c=;
	h=To:Subject:From:Date:From;
	b=YGe0KEDcUnGhCmm7ESgGh5PyW0noys+T5xOnDioSniiJJAwByXzzye/Qol4xRcQZC
	 zr7MyRIG8csLYvKCa4jJNb1k1ZKu+3/6L84IGEqEeU8KAGG2puqzrv2+RMW9QyPgpj
	 Q56hxgONRhw744Xq/reXqn38ssYf6F44k+Eb0d8VbIAKnlJ3IAo6RUrtWZ70oM6dCh
	 YrRMdVm17LH2fm+LF1nOPeV6MdYVzVYyza7jg7SJjCKl01bkcq1QLhR1eKSj2MQ71N
	 kLBbk4P4+CRNBjLtAYcXbbjiQiFwRspBYljXsiD9YWzoVJfsIp6CF98nb4yH4eMdeO
	 BoCDGLwMkq1Jg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D25D7C678DB
	for <ddprobe@lists.linux.dev>; Sat,  4 Mar 2023 13:07:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167793522585.13940.17346631236389544772.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1cbf9594405c646e51893eed57f2f0beeb492074550eae548ffd94001afca4e
Date: Sat, 04 Mar 2023 13:07:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677935225
