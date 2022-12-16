Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2F62366
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 03:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 952E2C433F1
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 03:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671162087;
	bh=ppt6aIqKawDZTymHl1qz4FnyvTtja0EBMNBHYXnJe5s=;
	h=To:Subject:From:Date:From;
	b=pk0pa4YpTMGzoEfWvFOJ6a7lOrb3scgkfPet6Nhljmg7r6R8RVywvtsxrr4rIrRCX
	 lbe/+UjUwh5I+5QsA77DCyGFGkc5/ukrBC7wNElJQwCIYKPtSNlXYVHdVHB9Llpnqr
	 VBkhoYEb6MMfBFKYpo5DKT12WkcWrO/My3KvK10KlVXrmwl0J0GuSfKIsTEwbBIDuf
	 TC31M3xOeEcEi/bA7a1wG0EoXOR2jnXj4aGw/nwqgMuvz74On66xDGnEdTV1CKABND
	 RmpPK0Aj+3TFBg+lYONqjAHVwhgcCQnknjMVXIMN1yAwqeJyvqNcYCRW0/wVG6g+n8
	 Co0GsCHQBWweA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7EA6BC4332F
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 03:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167116208750.30733.14628120755132726363.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: caae40131385a5d88f53a80878b4801c7190ecc8cc01f0dabd8c3fd5c5a2c01e
Date: Fri, 16 Dec 2022 03:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671162087
