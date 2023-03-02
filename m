Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3097BA938
	for <ddprobe@lists.linux.dev>; Thu,  2 Mar 2023 20:26:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDA9DC433D2
	for <ddprobe@lists.linux.dev>; Thu,  2 Mar 2023 20:26:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677788765;
	bh=A5XduLCwSGgwd5M/kRz1hkdz+EGGk1qe/+MgJA2GNFk=;
	h=To:Subject:From:Date:From;
	b=YxQJ8xVFMC7ig6c/hgxyEGKNkYi6BTs7i/VxPz99zfUUSOzG3v3eVITppnTjnZZW9
	 3bJf0QdcW+ThSo0Pa99Oy+lolg1XRp2b99O4rVMMHy+cC5q9n/t9PpkuvmsvVelUBN
	 +14juUbrenYMSCWwJa5c/X0ClZlFp32kSxPHbqQVOvdvTb6qFnpkAI5fGsM2rU5yZs
	 WMEsIQcmUzsmYmOvu++AS58ACpOHDgtal/qz4diPql2vPAIqgxpup3d2/xJbbqpqJb
	 8ZmkDSnuq4cHHec84YJhgK76hJbi91nYryc4sWiApaxoZCns0AKXpNnbExIm/4j3oV
	 k8M5h6FQbudhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B63E7C678D4
	for <ddprobe@lists.linux.dev>; Thu,  2 Mar 2023 20:26:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167778876573.19439.15774088435339426262.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e03e317602e89a4eac8036a1db89a8b031ff5475a7980ffcb67e6f596d4baf7d
Date: Thu, 02 Mar 2023 20:26:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677788765
