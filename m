Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DA092C9C
	for <ddprobe@lists.linux.dev>; Thu, 13 Apr 2023 11:47:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF8F8C433D2
	for <ddprobe@lists.linux.dev>; Thu, 13 Apr 2023 11:47:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681386425;
	bh=4GxEOee359qNTBMYzUN4PLF+U4vMlWceQdOfHqPMVIs=;
	h=To:Subject:From:Date:From;
	b=UAxYFCQ+gVp8YG2ZimfQajvf0x9DjjFZgy4zByhMZrXLCDi+CqpgCYjGADM0MZob7
	 DTLe6H5jMKj/OKXBbVbwBYgs9zaXnYlLnPMwT9THm456ER7vS2pm+GdlP5g3n75rkq
	 20FyCvijP/uHGO1C6goQeRErYmFYTyBT3IElIbJmg4V3i/bPfvOuNLYUGGiTiipgZY
	 N+8R1sgPBiPSSutpICXgVeFVLBB45GtOUE92En3xdd3c4YmEKka8xbK1/DUrcGvrqh
	 qvLdlREMwugi7d3d5HbJ6y7nNosBK1u6Im0TN6UTjuNJJtpjOuRK8mMNZWBTjgRBTF
	 /RbVjnbFHlatg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8ECCC77B61
	for <ddprobe@lists.linux.dev>; Thu, 13 Apr 2023 11:47:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168138642574.14689.8005998145277118732.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fef470e17c97da8ac5b12dc5cbb07287ac4a27ec22d1ed64998e12ff19b23858
Date: Thu, 13 Apr 2023 11:47:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681386425
