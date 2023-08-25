Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 697DF7E0
	for <ddprobe@lists.linux.dev>; Fri, 25 Aug 2023 03:44:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCD84C433C7
	for <ddprobe@lists.linux.dev>; Fri, 25 Aug 2023 03:44:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692935048;
	bh=hBExXYyEa4NWHwNCU7isHZUV2jc8ssVtV3t7xHQPpCk=;
	h=To:Subject:From:Date:From;
	b=gN4QXK2cj0L8duEm21k9RWH5JeGnAdJ1YdQpcOl9fdImaj5TzlUdrOxfoUiovgEMR
	 Zo2r0Irbqc7vAuNHt6hYty8GeYZgwO1Em+6I1IsnG9ZQgsBHGu/PZ7L1c7QTc9k1ze
	 fxGim6Hte4bOimn2yiViURWF9xrTzRgWzx9AC4TeFPw2c0LWCQSPKczYpudhNaCHf4
	 /P+t2kuNj+idA0cEHAHVOG7WXBDIEUER/G1hPOMlV7qd9NPGvtCucHe6n1c1WgJ5k6
	 OeWfBBsVoW4Af69M0Qnr6n4penIBArO5oanSlJDQQY79j6wDPljG+RyMiW94uqH28D
	 nmv8ZH7MfW0yA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9F4BC3DA6F
	for <ddprobe@lists.linux.dev>; Fri, 25 Aug 2023 03:44:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169293504867.6161.12280266262839718130.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72a18d5231f5d1dfe837f0d07ef8ae75eb19fcae5c7b1792fa3d2572f0b5183b
Date: Fri, 25 Aug 2023 03:44:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692935048
