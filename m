Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40B4C15B2
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 05:02:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C77DDC433C8
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 05:02:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687237328;
	bh=k2crjq85bUra3u146WaNdAqOfsiXzdfd/PElONX9H/E=;
	h=To:Subject:From:Date:From;
	b=Gd8FGqKFfz8hRxYsAaWEnivlA0EKdTNWHMNFkA9w5SnRFnyUs2WoIRNdvO4e4Geeb
	 bKSEJsEOqqm9u+fVThB8haw3Rk8XBdpvWIzK6cRnSbY/EJ+fuIUvIGYK1G0NGC4n7z
	 Ei9iDe1QlFYna10UhFOqCNg9EhUNYHxCmuM8m8kPIicdpyR1mx4p4tAOyd0Vg133fB
	 NDS0LOsFQs2HTg6UqM7J5AruZJkYnQxxarV9oGXAS9VKWSp280bM2eXrHi5ZuZqFnw
	 d7L2N7He1JD9Qm0lJzGy/cripBW6r7cmLUMn1WG0IVuBn0vKs+vqgb3Rjy3rVLcUNB
	 +6WI+jSsqP6fw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE0AAEB64D7
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 05:02:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168723732870.14160.14176885830061183690.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a91336f657d5bbcc19c65ad8226f91b9ebbbcf99c9d6db5b1fe9f3d0730b44d
Date: Tue, 20 Jun 2023 05:02:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687237328
