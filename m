Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F22F33C1
	for <ddprobe@lists.linux.dev>; Sun, 10 Sep 2023 12:24:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBE64C433C7
	for <ddprobe@lists.linux.dev>; Sun, 10 Sep 2023 12:24:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694348648;
	bh=99Ql4K/e/sr937by/30XfrtUMLdgSNeP3lSUhjrg2QI=;
	h=To:Subject:From:Date:From;
	b=sM9jqc3FEa1AiFf2u5KmdrnshsJuAwhZq2BeLQ1y9P1jSo+bD9pbTZ9oa08UX+1Mf
	 NxK8EnItNae2D38YjeHhMP0gSEF+HSjO+V985/ctS1CGI7th/bWNpBRwz1vVGXi1F8
	 fblFdvJre5IxnuVo6ohJoqZqs/jpi7rqE86W1UVk7xNI5IBhwGoxbeeaYg46ycGbf+
	 EZEUlPbYzyXjLHlSe9OTkWIzhjVEbOgkmMNonwaJrJluC2Id7aSUcD61HdVAgVIu3f
	 11aOkcA4Ml41usxg9122rxaHsmMb6N90X0jLXjnt5x11UOZLZKNBZDTvTiLW9eGP3C
	 THGxtZdtyJc0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1C73EE57CD
	for <ddprobe@lists.linux.dev>; Sun, 10 Sep 2023 12:24:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169434864871.17585.1523137666637361286.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21529f960bd5ed8b803ceeda0b46e95cedc997f9b929fd1b6778c85d813db372
Date: Sun, 10 Sep 2023 12:24:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694348648
