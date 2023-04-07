Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 431C07B
	for <ddprobe@lists.linux.dev>; Fri,  7 Apr 2023 04:58:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF6CFC433EF
	for <ddprobe@lists.linux.dev>; Fri,  7 Apr 2023 04:58:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680843485;
	bh=yN4PQFNCpouxUz+K8tyChTIeweLmGvUiaZR7hAFzCgE=;
	h=To:Subject:From:Date:From;
	b=nvU/UhTamSVVFoOe25FdaJlSGPdKQgFN4JS5BxKJZKsdQ2HUp4NguFXaLhAV7E3M9
	 Z96xqtEv+wrz9OWVNLV1jSZ/8qDnd1RO9GU43fsaebgt663W8CKEY2cwdPS+dIK0UU
	 P4Gwj1V6asNZ3jjkf7ziFqYePJylYORZhAi5KIQeu/9GGrVq2A+8dvd++WKcgAeRL2
	 YjFEZ+WnNx3taIeVNFGNnL3B0GiYajjTMl+20fT4FLh0k6FtrcdKExWxuhaG6T6zPe
	 l5v2T+xPxyZAU7MmcDKgAGVVd4iey8tjx2HgO9biF2AJ9yPdedP2XOsVlyekLeCicN
	 pHd0GtZ9uGZkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD7CCC6FD1D
	for <ddprobe@lists.linux.dev>; Fri,  7 Apr 2023 04:58:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168084348574.23072.13307177657797195261.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a5d19402b19364bec8109470143ad1d4b7e0519e4d9ace5dd152801357e90dc
Date: Fri, 07 Apr 2023 04:58:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680843485
