Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C421AD58
	for <ddprobe@lists.linux.dev>; Tue, 18 Apr 2023 16:29:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F423EC433EF
	for <ddprobe@lists.linux.dev>; Tue, 18 Apr 2023 16:29:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681835346;
	bh=wD16bJ39mLFiOqXYogEBytMrNoG+EuDxrP6otxzQwuc=;
	h=To:Subject:From:Date:From;
	b=J7hC6TsGnO0yeVsD6zX9S/Mce9ZQY8l/TOyftxcDog3d/bXx8Bo/vLWv8Cenhs+fa
	 wy/BY8IepIr/MQ8u2aiD3Y35mxgYtYGyJGNLvR6Okk+y1wmfqGJCPfwEUI0NMggCpx
	 mzYpR7kNX1lzSKZLEgsGVmZHf3AJo6B1AtzY//UVH8mUqYUkFWncYaiVnHxN31RCro
	 uZ0wVnhmgEuL4720tg6cxMJgFiSvbEKUTP+QhnzzXBiaSw4D6cl5LTWQOI4VzobpI+
	 vIakRVTCrkeuP0TPgWbUCBFUkiSy1JGBwTsAw+Ox2XtNKTRuT9xhfxe2kMmVc3BzAD
	 /3CAFOCJEgM4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D46BCC6FD18
	for <ddprobe@lists.linux.dev>; Tue, 18 Apr 2023 16:29:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168183534585.1314.10211580274603910149.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a4d6f6f49455bc3bdd18fb7d89575aff5f89378c8c4751fc1c308f5ed1920f2
Date: Tue, 18 Apr 2023 16:29:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681835345
