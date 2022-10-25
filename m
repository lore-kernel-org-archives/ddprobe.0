Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B8D2529A8
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 19:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6BCC6C433D6
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 19:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666726853;
	bh=TlHCjX3HMLTNxqKiIP/HsLsKv41ajOUGLZntvGZnQZ4=;
	h=To:Subject:From:Date:From;
	b=snQdx6USrBSblEAC3x3yW9LrkntUazaApPbFXvQ8iKWbnf/Jkifr3SLZMGA+947yS
	 BY0KlvZYaTSVVoFUEGNLxtCS8Zm/iuypH/y9ZTT8cDVX4W1fsdv8O94kSTUw1grJ5F
	 OUgOSJj1EuF0HipQPYtnbHnSe8ZZXbLKeEmkvWmfpS9dE/ebX+FbCBY/3szdH/8Oa2
	 kwWHjFeXkwaYHFR8acCPKzeBVc4YqshEy1i8FKXFu6Obpifym8W/BzceKw4NC9l92H
	 PjU2ojRlg1FRDxlFFRhf67L0FPPRP5ciLpNFjTBc06GMKYO25wjH9kaDIgQtThFYIj
	 5LKWmSVcpaRAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53627FA373E
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 19:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166672685333.8225.92567301571789097.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c69652ba871d628e8bb460f4231996294c8a87fbbaa1bdca75273f6e710abb93
Date: Tue, 25 Oct 2022 19:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666726853
