Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 323BA376
	for <ddprobe@lists.linux.dev>; Fri, 17 Feb 2023 04:23:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6367C433EF
	for <ddprobe@lists.linux.dev>; Fri, 17 Feb 2023 04:23:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676607785;
	bh=M97Bvj742IbVB6A6o65Dnxp9tjjhmQIAq0i0/2nEkvA=;
	h=To:Subject:From:Date:From;
	b=kP2g4BFFVa7LxuHcLRX8zKRAjXi2OmpHvIwJlBX8OyFtBIUv314yw/yGpgqrRz9d0
	 b5xKN2bb+gqxvkeKb+fJ0+KxCtwqQb/CacKWyEybvX/ztyh8b3mSZbBQJjL6E+OkFP
	 h65cL8wqy3o3rRNrsGtldypcBLSWSZPpeaZouH9dg1otC9jsucZCOE1Xwo3+ew6TEc
	 pySDjpsmXGwnBiWvBHyOfsu5ItC0UoJqtf6tEkpwmwsffu44TXoyat7iXwX7kNo1EZ
	 WIgnn09/q7CdCY3N8l5pkVmsd6srg30L/cAwagvsVv9slQR226d/8dDZa7FQUu/FZR
	 JzQXswNhKjIYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6848C6379F
	for <ddprobe@lists.linux.dev>; Fri, 17 Feb 2023 04:23:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167660778573.28276.8312877945541623566.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4516474460f58db9e0014d6277a21e668b0a3fa3c75470139e16a625600ed4d9
Date: Fri, 17 Feb 2023 04:23:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676607785
