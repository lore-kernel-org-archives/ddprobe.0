Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 883C439C
	for <ddprobe@lists.linux.dev>; Wed,  7 Jun 2023 05:22:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D93B9C433EF
	for <ddprobe@lists.linux.dev>; Wed,  7 Jun 2023 05:22:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686115325;
	bh=gKU6h5ALc6q85lRbXelhcJlZuHDPETeS5sBAAdwlCXU=;
	h=To:Subject:From:Date:From;
	b=P2gtR7l0o8tQv+39ShLcNL6wb1N9v+KvmW+7ly/9wPNNgQodXSAytGkCnHA6T0Xfu
	 +hURX2ZMItGme6+XKu93cW2Xs1d3uE0QqMDqo9bzesgxPrFmKByWmQD59UlX7Ekcuo
	 oBrsy8moEribvbsloh/rIKD80FL8ZjWI6ZwGxILPBflZR4OzjlI0p14vEfeLZfB8eG
	 1an6ziVmbhjGLO1A2TDKCwt+ZSH1Z0vrM2OX3OjbZx6YdoVr9Y7OX2OHE63km8HOLC
	 fVx8F1+7dqlKGwwi5wi2Oe54eQtVZ3X6jF2wo4HUaTctAtn/DR2oJiMk9Hupm6kZwF
	 f7Ecw4X6vBiKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB8E1C77B7A
	for <ddprobe@lists.linux.dev>; Wed,  7 Jun 2023 05:22:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168611532575.5772.108794288531781522.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2032656f64a83b985f5fa9ccc389bc03959e91c90a8aad9ad5a39977d843dcbe
Date: Wed, 07 Jun 2023 05:22:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686115325
