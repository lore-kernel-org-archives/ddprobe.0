Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 530D4A29
	for <ddprobe@lists.linux.dev>; Thu,  6 Apr 2023 05:07:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4C4EC433D2
	for <ddprobe@lists.linux.dev>; Thu,  6 Apr 2023 05:07:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680757625;
	bh=lsGpXZRoY0vH2omGDR+4aUTHmTOguVM+pgMNjbJE42E=;
	h=To:Subject:From:Date:From;
	b=clTAL+aD4HzMk2TvZ/kQO89J79uhMpCmbx64V01lm5oQx7N+kJPpTrOVoMNfDVSuD
	 oGFKSAiBUiQiDlARtEo7XHK4YCz4/9YUhRMKbGMpQMbv6o4d7XTmCrUz3ikVYg/QwA
	 jCC0J4Wwhs3nGqJu2pf6y2tzXrVF3m7wlXx4Gz/Kday8TL1QgqAZOwpAF8r5IJ88yv
	 cSCjVF+yird0yDAXDsvfFRh9MyGvoYCdNamLA8n9oCKvg5JZLdMry4aFxYQ9+XSxvI
	 Q+SHTs9SbvtqJNIisGwqoNnwLEMt6tVMzhAlCer+a351G3AnhTiSu0pNOVlRyrLL3u
	 M67u3tszbIylw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8D5BC7618D
	for <ddprobe@lists.linux.dev>; Thu,  6 Apr 2023 05:07:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168075762574.7517.15512522895248493575.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f56ea12e359636d501629cafa3697df71815a1e24dbc00ee0e38bc08f5e988c0
Date: Thu, 06 Apr 2023 05:07:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680757625
