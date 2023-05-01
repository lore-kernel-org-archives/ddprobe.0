Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8454B20E2
	for <ddprobe@lists.linux.dev>; Mon,  1 May 2023 12:18:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 2EF1BC4339B
	for <ddprobe@lists.linux.dev>; Mon,  1 May 2023 12:18:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682943486;
	bh=PBTi6wgOuQfvDQMXOyAMVmHQxEuxWILA53ZjmHCA4/Y=;
	h=To:Subject:From:Date:From;
	b=ZR+6ym8qFkZyoM841SsLFbfne1mGdvW8HqKDaeOHHc1OhPlRuWLKVZkUqO1u7iQZP
	 GtQG+ykY3GYZaFN2Zi4WeuRJsYWiVNVWIVW8jg8y9zSsiG+auF6relpcClG24FefSR
	 /Ij8wpkr9MREIJb7Q8oNWbCI/kHo206kfK5Rhz0vo43Q4mdQvF0sKlORuzouUxPmUd
	 1TlEI/AVjRUAWjTOmCCtwj5CELhKFuRVXjJlF0Fa7W77dfP1VDgyu/otXnkTO7/mTT
	 J/VJJDOeTwP7Ky01fRmtdYMyEOl+flxx9kIA7k1lxB3hez1NJkVjZ9jlWHHnP4CWSi
	 vYaTFyYXGL1Vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EE2C4C77B61
	for <ddprobe@lists.linux.dev>; Mon,  1 May 2023 12:18:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168294348594.499.12003506211488818555.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6b3cf55372a5290250c18d30bce15e48a529eb3a24a7fe6b37976f7892433d9
Date: Mon, 01 May 2023 12:18:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682943485
