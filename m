Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DEA0723A4
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 11:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79E81C43396
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 11:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671623487;
	bh=5O3ZKWB8SPOhKnuwIGGW1ulYjdK0rqmoVzOab4pOjQ0=;
	h=To:Subject:From:Date:From;
	b=HDYncdJhM9iMM+mARip4Ky0Mgu4g/ZtviIfB8MoNFpcVdVs3eW+y/trGoYDnCzJTy
	 lqCBNhlgsMw18Am14uudgxGLqbA7e9SS52XM5M1iY5VY73GkN8Y4DbLlpKnOxL3YpX
	 O8AGmCa0MR6jljRcnvDYIYVVYtNTcZlTOa7F/lc5O/ylWUxiF/fB2zb2iCfwPTXUWw
	 hy/zfpILrNUO8//5mLk63gbGGb3CoxTdZlQuGWHP2UB/vg3+tutIo8vtOUKwxh5JEt
	 4uzNpQsMSvkc5I8auABrw2UcxJVXQEByDYGFYYH/JiEbKK7Sf8d7JbrKWN4Uwdzi1M
	 TL5qR2a/5qrWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6096FC4167B
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 11:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167162348738.9988.14744088441339136298.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9bc86c687e10ffd45e6d9d968b19e855ff7ef6e47c5ad908906380ac18f85ff6
Date: Wed, 21 Dec 2022 11:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671623487
