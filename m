Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5633F156E1
	for <ddprobe@lists.linux.dev>; Mon,  9 Oct 2023 18:37:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eE9Unm0Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA59EC433B7
	for <ddprobe@lists.linux.dev>; Mon,  9 Oct 2023 18:37:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696876628;
	bh=z9qrGVhojc+2eObQCeKPAA0+VQqROBfRCdeeVj7I+Ec=;
	h=To:Subject:From:Date:From;
	b=eE9Unm0Yb3NAtJKvDQx0sUqmM1lrLf6lLzZ4JIIOxat6TN4kRUi2bsIUSM9XkIx2N
	 q2eCmqG8Wn2vr0OqOrdXOo3ZnKynZO7M9i6JwK8uPnOHNtCuHXv55KlBgvFXWxg4/5
	 1ePuG0Fq+MVl+H97xFfKxQQXeWHQP2oWJ+7bmJyFdEfnTjvlN7w6oK2thVPzLlO3EJ
	 y3b1WlnjY2emSkkoXt28y4rXcXrw5B3uC5uTj5e0IuK0A/VRYthHbZWzNvE/OYU06Y
	 E1cuAOd+cVE3ctXnAX1RCMwyanlL1R7C/hPhbFPsIkNREnQ2cJzMJJ/fmC034NqGkf
	 a3HdZhVbpCJgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADF69CD611E
	for <ddprobe@lists.linux.dev>; Mon,  9 Oct 2023 18:37:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169687662869.22585.3001249446447520907.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62684a769729f8da018ebe9862952fe241fd74aa5f289c76fae9f64ca6b4a103
Date: Mon, 09 Oct 2023 18:37:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696876628
