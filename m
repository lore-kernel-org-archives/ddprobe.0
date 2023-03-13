Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A5CF2566
	for <ddprobe@lists.linux.dev>; Mon, 13 Mar 2023 12:17:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFA17C433EF
	for <ddprobe@lists.linux.dev>; Mon, 13 Mar 2023 12:17:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678709825;
	bh=zqn0Rd1yl8zpD0QrNX/21UCHcI3kjl6qv63gWmFXYAY=;
	h=To:Subject:From:Date:From;
	b=b+dWOh5sMLp5ZMww/dvIXZqj5QDD6/mI71p2NfTLP4BChebmwGoKAWVUO/nVlqAWt
	 F1osIGC30YxAwN2M1rtmWr/H2vcez3jlPjqBVGJiIXNYAxDKm29KM+xv4zeaB6Wdu2
	 wOXBUvhEe8Wo+24DYWRXZ5RFoN2wZ+KKvLZAuLlx2G3/SW8YqHnehuImzO+270J55x
	 MXyiL+1RzC5RFeJlKVY0uCtUvccP5oR1FpR0meyhwZtRKhSEKnFDzQ7rOBj2gJAV3/
	 PEDX+FPBBagW6pdtUn9aGvCY4NabJUc1bW4sxE2Yusx+H0Op1U08VX1jeBmU15hXDR
	 fMlS3aCJ1j53Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C43D7C6FD19
	for <ddprobe@lists.linux.dev>; Mon, 13 Mar 2023 12:17:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167870982578.19147.695620521851240591.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 150ff41185c180d14cefbc6934cd6963929dd0d133d0fa4f34a3072bb6fa3c99
Date: Mon, 13 Mar 2023 12:17:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678709825
