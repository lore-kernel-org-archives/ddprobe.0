Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 691E515489
	for <ddprobe@lists.linux.dev>; Thu, 27 Jul 2023 10:22:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB4EFC433C8
	for <ddprobe@lists.linux.dev>; Thu, 27 Jul 2023 10:22:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690453328;
	bh=jwWPWfON9ZFdscDdp/scxAa0OMzRGuTxx3UWUBU4FiY=;
	h=To:Subject:From:Date:From;
	b=Dij8+DjqU8DWxD9cN/CgKZVKocDhZcweaR2Z3enuJtKky0RFLzRl+4YEjLaagjWi8
	 N6tl+uelIDI7DAUAbgUKPfJs0AWLV+41sPUsPJvHQNw2Ib0RdnfF2o2iPN8zE6pEsT
	 diq5QbYwBb9uR08O/nMi7fmAmgw4VZe78zil++kcQjhqt1tHY+qd5cqTH4ngus2NIX
	 uvzRNPjWZx2gi54hkLL9jYM7gM6PFXxun7wQStFKEMqBmUz9e2yubNY4KTyh6b0sVP
	 FIF2LZJrZxRAOed9ox/GOTDWg+LIob0n0hnmlGZKb3JfNwpQZFLhpRfzufBYwKwrYH
	 RY6jIoug8NKHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB9FEC0015E
	for <ddprobe@lists.linux.dev>; Thu, 27 Jul 2023 10:22:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169045332869.25182.12072429925217540988.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 276d05e27910000f86affb8bf889e0fb24ee12c3bc19a3f4eebdf923f2a75499
Date: Thu, 27 Jul 2023 10:22:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690453328
