Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C9A57495
	for <ddprobe@lists.linux.dev>; Wed, 17 May 2023 05:23:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 3F1A1C433AF
	for <ddprobe@lists.linux.dev>; Wed, 17 May 2023 05:23:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684300986;
	bh=8aS24xN5XO/r15OwMvL4pj+Kz8BOU3yu5+k9MNI/2o8=;
	h=To:Subject:From:Date:From;
	b=SrSzEHYgiHFpx0Mn6i0+xuxcu8JRSzqnTGdJNRWuywMGUgYemyPEIoDbs3Y6Hfjao
	 ExTCxgNCBKemlv+lkwS5ybNBBllL4peUTdrtqw3lrlYbxWN93EnqKAHb1KCUB6w1Fi
	 Wg7zaIB9zdemCbYo25cN23JzlVeXtKuQyM9PXDkM1AATMAMVOAAAiDDsTAmOzu9KJE
	 LhV1j9aL7DnBq2cuKKXvS9fJ2gOh3MI84Ow8r2GbpX1mACnLVQYDoM8D8Zj9gHGXbD
	 a0+5P2MhAfEKNa3Uhq7wbzFYVi7RTo9Iu51IG4ReY2VDft0ztPLu658kHCX6n7vrIH
	 CKEg+KQMAHMvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 00C3BC77B75
	for <ddprobe@lists.linux.dev>; Wed, 17 May 2023 05:23:06 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168430098599.3842.9095365086875678860.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5324d0b7819852e1f2053f6cab4997c1f343fbcd1dea211e76457d47e37a6cb
Date: Wed, 17 May 2023 05:23:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684300985
