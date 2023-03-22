Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30E382584
	for <ddprobe@lists.linux.dev>; Wed, 22 Mar 2023 20:59:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCB8FC433D2
	for <ddprobe@lists.linux.dev>; Wed, 22 Mar 2023 20:59:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679518745;
	bh=gcuqZ5JXYvBQyApOep5Bdl85FaXV/3HKdLo12DXdM5U=;
	h=To:Subject:From:Date:From;
	b=KroibxQpjfh25zKW2sr1U40GNqz2p3Q15GZKaW296x+OyNNiW+Zh1LSXPjcQCbNgG
	 eWIuPN0kU3PHNcRYFbW4uet4KyJIbJh6XhCYNgP30xvN6DDscSn//nn9JcsR76H+P8
	 PFL+AWL0XL8KXA2Ly6rJBwq5EgQ8Uzp/G/sKQgSVn8nEbm3EdhQ5QCEB4OLqrKZXW6
	 q8zXCTAkLQoSIg7BOqzEH9sjPRxOnQFcPk0xHo30GhQfQl4ZHjIuzVguG0bphsJecX
	 FGfo0Dod892/wffylGJ0jL63dfDlBfIYkM9Udf/i4qi7Y4n5tCxueBr1fcFCC8o6bz
	 E3PKSGtBRDdRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1AA9C6FD1F
	for <ddprobe@lists.linux.dev>; Wed, 22 Mar 2023 20:59:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167951874578.2749.10861406187037137253.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f84656b3afd2b39374ad7c8ebced6dadbbdd7cd4cf1cf1db75d9829a2f17a8a4
Date: Wed, 22 Mar 2023 20:59:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679518745
