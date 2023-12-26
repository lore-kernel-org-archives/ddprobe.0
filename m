Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CCF74C605
	for <ddprobe@lists.linux.dev>; Tue, 26 Dec 2023 06:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F/uSTXbB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83C76C433C8
	for <ddprobe@lists.linux.dev>; Tue, 26 Dec 2023 06:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703572696;
	bh=ubxhqh5m/OU1jstKE1V+gOWragTGijLlFsox+ZnDFcw=;
	h=To:Subject:From:Date:From;
	b=F/uSTXbB34S2l2F0rFGWFgDpMRLbGVxr2XbWEqMz4kMj83KgsooYSiJy3ZZN31zJw
	 ymP91z0iJUjhQbJH4juGVPZ2Fa2rq0eLfQzl6D6NkLidxFtgsTL4RwEZwPgVL0ONa9
	 XtYG/JwyDItoYyzHUFFBTSR5t83X7n7oDIrk0aKYxdYcvWrsQ1lC7+StgXd/X8T86d
	 1gegZ9yKyasClb8SqKT4n56VE4KZAnoOzAolQ8OW6IMzArqoKxGdQmMdJ39/lFCgii
	 hv16QczQvrqXxScXyUnQwxJthPQC56joLPozHYomafVzF0uozZ+oBAouijanqGKbWL
	 eVfFlfAIhWn9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 672D6C46CD3
	for <ddprobe@lists.linux.dev>; Tue, 26 Dec 2023 06:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170357269641.12860.9696020038611961039.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf2f3a2a35fc732ec0f8f478486383a4b2eba6b13002d2e8bf69b14f8e5bc26e
Date: Tue, 26 Dec 2023 06:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703572696
