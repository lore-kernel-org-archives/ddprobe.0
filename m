Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32687A48
	for <ddprobe@lists.linux.dev>; Tue,  2 Jan 2024 01:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="np95j252"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9162CC433C7
	for <ddprobe@lists.linux.dev>; Tue,  2 Jan 2024 01:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704158296;
	bh=luzGosCZqQ+r63upem95wqZKnVzrbHLmdJHno1LnLtA=;
	h=To:Subject:From:Date:From;
	b=np95j252C4vduVsDQhxx3DEOgr+xUQ1snt1OUaRYWFe7giJad5HjNGsfOq1rLklot
	 B0buZNlbOCM/AyVEmB+hV93z/I/NPbRYhlSRMgoAGlClKHiVAh1LbKKouIlaQu0B/q
	 a2fExzueNdDL9kZrXwQSVuErnlWbmfCK7dZrYS4gf0yV4kJLu0A19a+wOGLkWQ4icF
	 v9Co34/rzsXAYAhX+CH92MoWEp1G8H5Po9yoVFMggZ8LnwNALCa7i85aLcl9J1azjm
	 jMLvFa+tj42p+meN0RLNkRr1XNEyAuAVXLHy1gNGWgp8DgRQi0MjuzVEGWSTbwmKed
	 Jfei1Nd5o+gqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65F35C47074
	for <ddprobe@lists.linux.dev>; Tue,  2 Jan 2024 01:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170415829640.24735.5849157763507201213.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 741f52d02839bbb3c1e11e6fe55d34d42b159b798de1ee70ba220fd8ea0f7030
Date: Tue, 02 Jan 2024 01:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704158296
