Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 450F32F26
	for <ddprobe@lists.linux.dev>; Sun,  5 Mar 2023 17:27:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2761C433EF
	for <ddprobe@lists.linux.dev>; Sun,  5 Mar 2023 17:27:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678037225;
	bh=7tih+ujMZ3KKHSRs2hlqr9q8cOnE/W1vW7y1agqQ+EM=;
	h=To:Subject:From:Date:From;
	b=lX9NrARLRClsSP1TxoS/BfLjGvyob8IuwBcccdzJP3vxAlJQ6ebEQ2NdcXUtRXkKT
	 MLf0v08vYBxhvgOFMinaxBN9EzXQ8Vn4rlGbPs2LmIzQRPujBwzKHoOg8s6U3BJ3D3
	 sXIN1dOsJFI+rJq7AWSS7eznp+quTRN+oFvfYzE9Y68O7B4s9FUWEuwHSfy08jGQp5
	 l2Nx932iB7r3Do8l88+NEQqvF4m4YAnz64kj8YLDclH2PoTDToGyv6SQQbj+x2To3k
	 gDWnddQhPp0kb/bbl50dBNOp1uX8dgx4i+u4QTXFIZza51rMnWS/gQZe5wu1wk71Gj
	 3xO4r8HuuMzPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5D0CC6FA8E
	for <ddprobe@lists.linux.dev>; Sun,  5 Mar 2023 17:27:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167803722573.21296.1264517808860088725.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d455394bd6fba7b49794c7a3d2b853992d99682917098e44eb99c3e18c68a29
Date: Sun, 05 Mar 2023 17:27:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678037225
