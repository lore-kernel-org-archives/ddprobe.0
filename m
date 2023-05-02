Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F94C363
	for <ddprobe@lists.linux.dev>; Tue,  2 May 2023 00:13:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3FCBC433EF
	for <ddprobe@lists.linux.dev>; Tue,  2 May 2023 00:13:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682986385;
	bh=ZfhYl2X1RgANTffN2Wi4+WRzmXwN5GYpl/GUA2rzufQ=;
	h=To:Subject:From:Date:From;
	b=gXVN7Qw4+398xaUO4IWOG0Vi5aQm5PD9Y1L+N6iTf+CYv0dctdKjnpA6YUUVf5UnH
	 cu8T94RhpVI0A0yk9OIUBkVeDaZI44WH2c1Ro5ZTR3HkObobLr6rHpniT2hZznLtca
	 xSgbZhUWg8w1LfzNF9dcKKxg+Q6b1TzZLGOSf/aCeb53hlvEy337MLvdGpjZzWd27L
	 Z+iF4aMafZAaOJ44rBg+STvSElFA+L5uvXoy4DhQUkkaTpr0CWC8zkUrPkQ0CI09/i
	 Px+/Bi18AWKXHeYQ+hG7k/T6/NoW4n9jdDgaQEOPd9l2/Y/CrmIndxfmFbQJe96qmx
	 hxbcUmAL0w2Vg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C296EC77B73
	for <ddprobe@lists.linux.dev>; Tue,  2 May 2023 00:13:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168298638578.3224.7561156729730294239.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ebdcf2e6d145c0ddbc28cdcfbb8d31553a3e601f940a6cbf8a134e0f16a3d69
Date: Tue, 02 May 2023 00:13:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682986385
