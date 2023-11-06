Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 088A733CF
	for <ddprobe@lists.linux.dev>; Mon,  6 Nov 2023 21:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DkjhJxpB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8193AC433C7
	for <ddprobe@lists.linux.dev>; Mon,  6 Nov 2023 21:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699304896;
	bh=V8CC1CQVRFp3LZdKEesDe8IEx1GpvxSUjp9d5Saw4ew=;
	h=To:Subject:From:Date:From;
	b=DkjhJxpBFPtOEQ0+YwOOnJfQmvZucK8NVNn6VG4/SN1Y127W4xrniif/hS5GnAjDZ
	 cDdCyX+FJl/8MTKnTkYEWeFfwvJuKfoa1aTyxLpvMb44TXUoaJc6DAxT0AFs7uHKSK
	 qscZJW9KfbbEva+R9QZG1TMo1LB09Zwwi+4y4rtaVe5fkUgB/hR0B+sEXicKVQw1Sn
	 91sS1fB5ZoE3mhhTm4qELvVBJCSPDIQenxOo929/w+RxNJZNRR5GZbI9h3KCHCtpVV
	 jMHUt7GZrVbWOeU1fFg9XxEKVcuQ13NsYmYEAfjsUswvQjmFHhiZ4zsXsvfgzd/bM+
	 FUmsYea9xmu2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65A68C4332F
	for <ddprobe@lists.linux.dev>; Mon,  6 Nov 2023 21:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169930489640.32068.5691323485544473848.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ab95a6eacbba6003b1477f59767cc2a3ddbb2f384324177741cb115f08e8b28
Date: Mon, 06 Nov 2023 21:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699304896
