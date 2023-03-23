Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DBAB19F
	for <ddprobe@lists.linux.dev>; Thu, 23 Mar 2023 11:39:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAFC0C433D2
	for <ddprobe@lists.linux.dev>; Thu, 23 Mar 2023 11:39:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679571545;
	bh=8vBrTfTSJ8aDeCEfebKGOcEKhCwBdRid4rALpxCxxPQ=;
	h=To:Subject:From:Date:From;
	b=rx8ActPJGhJO/YunwYI7ztSBfAQYWy2CA7M8Y+sLeIrkVzqjntCBCAkOuFm89oxXj
	 ma1+KHzlQra/DFABvm/oV9+/LktCB1+tpbdkY6dYylcq/cJUiv+7o64TqdEL0S6BCC
	 b+mJjwtC9vxGuNBh2CJX+PobE9xrposEKjqIkocSse0y28cf4W1eYfhlTAGE/n1hkb
	 JoHu/UZPA0Eu/wPNuAXROW8iDEQJS1ovNZXg5XQp/MzaQ1hLxLU0iZlyqkp5ymUGmg
	 UgdjofwZnttmvH+i63cWc5euQdoZb2ihG2y6YUrdF4d82RfwzQGT3FjdWZPBkHmhHq
	 yjhATO5wma4qQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3F57C6FD1D
	for <ddprobe@lists.linux.dev>; Thu, 23 Mar 2023 11:39:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167957154579.25511.17259497314818321086.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8056ac28aaa5899b8afbeefe279a6286802946767432e586ce20a61fba844112
Date: Thu, 23 Mar 2023 11:39:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679571545
