Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D56A349F6D
	for <ddprobe@lists.linux.dev>; Sun, 17 Dec 2023 21:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CC6v7buS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7BF49C433C7
	for <ddprobe@lists.linux.dev>; Sun, 17 Dec 2023 21:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702849696;
	bh=fSuM9X9/1Z05b82LnVrqMuPgg82G6H/3sxN9IXXu3NU=;
	h=To:Subject:From:Date:From;
	b=CC6v7buSlTSgk79zhIRqmZMj5hIsBoUwjJfzTh1nuZgU7iOIzn0kFs5ZUHqvc9NKy
	 hipF9DPDBreAd7QICerxg+BjMpsZrB5QUeLKYXsnLvWx7d+dyVdjsB9YoVIg43jVRv
	 MuIi15c5IKYM0HwCJDJndMILtVsanGjlsqdViTc86sb5mOS6P0AHAZav7mvYn6t5MI
	 FROCvMxolrG/6FFLj/wGDnUAffbtNjMfZ/g3zEdxGvwxYdjZljWf47IkifPnszpEzW
	 a3ObsxHxVSn79IfS8wWvZRE2ka1sAdMCnn5l7JA9YGIbWSUZIHrmSnlfmXoMp+4DrU
	 kVBM1J5Cvrvrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61A0AC3DA6E
	for <ddprobe@lists.linux.dev>; Sun, 17 Dec 2023 21:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170284969637.29881.10400753771490910011.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fbb6fde0f7aa9c08aa9354d0fb12e7327ced0123bf5860b834c905fbc6421aef
Date: Sun, 17 Dec 2023 21:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702849696
