Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AF561FD2
	for <ddprobe@lists.linux.dev>; Tue, 10 Oct 2023 05:27:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aE6CGmHg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9E56C433C7
	for <ddprobe@lists.linux.dev>; Tue, 10 Oct 2023 05:27:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696915628;
	bh=sDRJmuklJTz9rjgQNe6+ysT2Kcg1pFH3rbsTRVnBqVk=;
	h=To:Subject:From:Date:From;
	b=aE6CGmHgGD2KvCqRYvC4EkGJvCblHGRhvQBlJH3gsN8dFiFIGd4xv6z8DSFgo4U/E
	 wMFDIuh4QmOKXjtNdnEA8q5ddjKawf4hPyUsD+zzOF7fzboOQP1/MjEGFXLnjOwGVv
	 ngcd0hyyFwt9Dk59csIEc32AO9wG2NO1/QwpXRMLFkfjDaF7DsIWBvigL50yCAkEiV
	 AIScAWUqtHnRrm4JqJJ2xJHlrDkysRTS8uQ5uffrFnIJxmpV4DgAolguLR8zih2t5Q
	 t87dfrFlE7EcQ1m6clKDv0PTK0QYymPOtkw0P9Om+bj3adEU1XEeWyUMuNdY87D+CI
	 +IKaylsa2VCCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE83ECD68EC
	for <ddprobe@lists.linux.dev>; Tue, 10 Oct 2023 05:27:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169691562870.31949.16855401608920333093.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be19e711aa40a14ff1ad33912d287684b2c90e50794e7b1257bea178510f0476
Date: Tue, 10 Oct 2023 05:27:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696915628
