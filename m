Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24F277E
	for <ddprobe@lists.linux.dev>; Thu, 13 Apr 2023 06:57:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D632FC433D2
	for <ddprobe@lists.linux.dev>; Thu, 13 Apr 2023 06:57:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681369025;
	bh=wbL/envlti5hJsrg+Ehjcn0P3E6tTlzSzFEr+fqLjUo=;
	h=To:Subject:From:Date:From;
	b=THnRkz/HfXzFxrbwp8J3bDfspBnl3uZzMCdmx1VlFfuOHAzKCHjBJzhJts08TND9R
	 iU4UO/k33LdUmhXsccDTukL7+bqOWxpstEPzY0Pu7egRbzXaN45/dZj2LqsnV1oSAm
	 LwVa/55gfjYxw7S5w09YIGUFsh3zdxR5aUk3Hj4qR/1Kmi1jUcJR/h5s6upO9YFmCf
	 Bl5HyF/n20YXx4nD+GyH/nIzkK/dj6FzZ9P05J4ZM1gXakZU0vtJDam/W3WzRurrR0
	 mDmq0R/1NPES/pBFJgiL2htoAUPacmEWvQ314WVvMN2/odU1XkSJurndxThbJLJIHr
	 WG5HyXYn18aFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB34BC77B61
	for <ddprobe@lists.linux.dev>; Thu, 13 Apr 2023 06:57:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168136902575.32709.10709381669133689918.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66164ee1e2d7faefe6a98835abea9c2f819260b9fba9beeb7ca6c5e6c35ac35d
Date: Thu, 13 Apr 2023 06:57:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681369025
