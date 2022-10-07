Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BEA4F7E5
	for <ddprobe@lists.linux.dev>; Fri,  7 Oct 2022 01:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6DF52C433C1
	for <ddprobe@lists.linux.dev>; Fri,  7 Oct 2022 01:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665106253;
	bh=1b6POZXGxSECTtKiAyNNQ7b5sh+P3Z0oOG3Ei2HXIcA=;
	h=To:Subject:From:Date:From;
	b=Wagn5zK6WXf3be/LjeIE5HP1fDanh9Wfs6FAnDLkLeRrf2Lf3OtF2Fl8Sje0dytkO
	 /llmHTzWu2oswe2k7VbAgzioI7LImZZo2Z3b89lUmmyKgj/ZqR8JkT1Q/fyZBIurTM
	 lJWnCEvg7IiGiz1O+fAw9yHZnEO39PGF3Whyo5MV8NzgEHOlX3b9rBwP+pm2LDRMTh
	 Mfjy3Y32iiamJDhzExqGuuxp2Q5HdIvauiwR1FVCay6fB9bZAIsG+cdvcVWvSIiDYl
	 QgwyM/Yxok+x9SdleXAbtA5vLczoNkxV+64hbrG1zbEAG4NH+/wq9+T+AF6ZlFwLmY
	 ODQXpf1vRrHaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52B66C433F5
	for <ddprobe@lists.linux.dev>; Fri,  7 Oct 2022 01:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166510625333.12528.15346600786630534240.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0d737591218a5d1e688af61d22498fac049aaabd84c2bc22d6d42965eb4b54f
Date: Fri, 07 Oct 2022 01:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665106253
