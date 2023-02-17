Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A577946A
	for <ddprobe@lists.linux.dev>; Fri, 17 Feb 2023 21:55:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0C55C433EF
	for <ddprobe@lists.linux.dev>; Fri, 17 Feb 2023 21:55:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676670905;
	bh=cpYp2tYGJW6xi+O4btH8MVnQCIVDVqQsFcQO/75qcVU=;
	h=To:Subject:From:Date:From;
	b=CgxQHlgSSAKs/qNA/+uT6uaFfLatkx+LzW903xbBqdkCV9CSYlGdab4kcDcCWIRVt
	 uA4gcDZuCB/YmB2RABF6MKGYNXT2+cG77ImTCt8yPdKw6YiScVrxsJccC1VN1JcTCa
	 MsE6fh/rndUCo9bBK8nkNxxYORq8V9AN+1Mszf6HKNecuNJU6CE5gWj4pbYAgWKT5U
	 PpiDGUv4lytveNHNiaW1TnBzfaYfb7wQsw4EZT886qmwegrwaYeyuFJAxh5gC7hfft
	 WHTafK+tLwpuh08bkm1Ftr4gugbX7/t4Y4cNyr/+CYlmei2dtTPvE06u5zIPpbz+xw
	 Gg611lzRmLl2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1AEFC05027
	for <ddprobe@lists.linux.dev>; Fri, 17 Feb 2023 21:55:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167667090577.22833.8206922442053534047.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b56ed958524c5de1157c0a633d7645e2c20f297164166d7ee4fdba445cc81c8
Date: Fri, 17 Feb 2023 21:55:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676670905
