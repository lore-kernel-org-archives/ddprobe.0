Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 277067E
	for <ddprobe@lists.linux.dev>; Thu,  4 May 2023 14:11:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EFD9EC433D2
	for <ddprobe@lists.linux.dev>; Thu,  4 May 2023 14:11:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683209466;
	bh=bK7FAd5lRWoA9DHX9IwJ4ubpdbRn5ZNc7U143vPUgQc=;
	h=To:Subject:From:Date:From;
	b=d7pgHkbb9DzRca6RpQvoGaFqL3o7gA1rt9e8NJcXWVP2gaRCH4yD5Q13VoSxPpAdR
	 WtQCWYXC6BcGNUmnFcq5q2xjpe7zY2K9z/4xyCPapSoMfBK7Lc4XJgzI9Q7P48Oo8v
	 6EvrdKz05v7OMzJsMMgkWfVDQroNiOfG6zhYeUK43oHD24nHFkjxPcUxqSHjlIJwqs
	 L4uaM50LKgtd4yD90VM3OA+3wn7PXp8+mTiTS84gqXwiOVRI5kTuynl+Syl+uXZyjf
	 bIxkNviXLVADAba4YWvtgo5HB4diqmQpUBREW73QBuClZUdDlfpgcVxgGRlfKzFrYD
	 EV5lDNhlhU5Yg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D358BC77B7C
	for <ddprobe@lists.linux.dev>; Thu,  4 May 2023 14:11:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168320946585.21237.17912170922952480651.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73cb236f16d8525f4e5b42c356b897217b5cda5f8084ad67923f72f89607e821
Date: Thu, 04 May 2023 14:11:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683209465
