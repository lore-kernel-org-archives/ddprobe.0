Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69E23134A1
	for <ddprobe@lists.linux.dev>; Wed, 14 Jun 2023 21:47:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4CECC433C8
	for <ddprobe@lists.linux.dev>; Wed, 14 Jun 2023 21:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686779228;
	bh=5xZs2eNnpnFQMbUM9XOCo6YiQnPj9kSEfbVgJzjHlt8=;
	h=To:Subject:From:Date:From;
	b=aN4oD8MVSyvitR77KByWCpjgRoNBrA0tFwjfcVt4UYs6Ox3Ph7gmm5Y48D8qJUXJX
	 ZssyP8ZvmUAl71XS3wj+KJkigrkxS8iCbBBXSQx1L4R8L0c7ky/misppa76SWG6/2m
	 WJZUo7p9tWo9YQxaqrUF++CwKBI4FHWNW0QqTv6VSVlrrlIh2zu6zSIOt5t6T8a5bl
	 LeW0+sMUCPhD/tBzRP/bdKaA416vuQfFrZehdrUzsL7/F/4p8pMhumiO9bZvlusWqi
	 0TTVWGn7NGmlFfulb/2kyE7HiJ7m7CIW92BxLwbIi558Y6H8FWU/9+w625HCnk74Yj
	 +nKkfCVwsX0yw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB429EB64D8
	for <ddprobe@lists.linux.dev>; Wed, 14 Jun 2023 21:47:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168677922869.10098.15508378698647733407.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4123f64592f59183c32d9b2bd99410b4f1610f8dc9f588e96abd1f89aed3354
Date: Wed, 14 Jun 2023 21:47:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686779228
