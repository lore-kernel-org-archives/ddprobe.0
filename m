Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 679B5746C
	for <ddprobe@lists.linux.dev>; Wed,  5 Jul 2023 11:57:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9465C433C8
	for <ddprobe@lists.linux.dev>; Wed,  5 Jul 2023 11:57:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688558228;
	bh=VcRz4TLt2c/i1mPtjEFJnMdfUI4fqx+oNwPak2rCdjM=;
	h=To:Subject:From:Date:From;
	b=jSJyiUlyRM9ql/xBm/kho5ytjRrqhZBvCVhuyAFID5HJCucVU1buNGXbOPzwFpYX7
	 eBEzYRKUlz0cshxwb7KJaYEk6ZhClh4fEOk8kT1XQjgasAIU9tOmGzrA/dWK9rvLOr
	 7dZBvsUqqXaKvvYQWapUZZss506zfl/ODVdcDxDDymb2m8bKwTrxCip7sdhi76TAG3
	 ItyrkYRc6Cg/W2FKWFdBYriNyVEAv8rDojWsEFftyVGCmPf5MoHQSYn7klMhELpzpy
	 KlOV4swiPB1Lk0gZ7bWOrrAZDQ8gA84eBl7SOje2Ti2LNXWUcvyugV8Lx4ApMDLYwY
	 Uq9RuAqSf01Xg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF788C001DB
	for <ddprobe@lists.linux.dev>; Wed,  5 Jul 2023 11:57:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168855822870.18180.17954187419797119505.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6fa08c8474d43473ea74f9ad751311e82dbb69755d29f4b53731b65d2652590a
Date: Wed, 05 Jul 2023 11:57:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688558228
