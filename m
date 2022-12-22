Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E11D06FD9
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 15:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80A4DC433EF
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 15:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671724287;
	bh=tObtCeCxuAm+pmOwUMKkXF0cLwtfUs6YAqsnrwacA5s=;
	h=To:Subject:From:Date:From;
	b=qphLZ70n2wdSBJkfSXmdg5EuDKYis3ueG+sfzK6casbCwN/aYL3QVhUWvl1Ir6YYU
	 RNN9SWfaOCw5hIGWVOQs/djCZeTwXts0b5xSmcSYGwV6BfQach0rpGalrZbbwvxu3l
	 GaB6EOC+kH9NRKOT9u4BVpZbHO5Ubt1Dt0sfZq8/XkJ5LNY8C2uU+2amK0vp2BDUf2
	 5v7hkl0chSBJAjNO6mDU7dFLQipQ7Qrtx2RkG41p/Oe7LZohrfpGLnMhw/DqLppv5H
	 RYmJBF/lxuCKvdtcAxz54SS+Gupy1n9TJrFThQnyuFbct9mRkV2ZzfQulzFBNDGFXC
	 cLfOfK2QGD0cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65DFDC4332F
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 15:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167172428741.27396.3130083095155306284.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7976977ee4bb426e1011a2dba4e75d59d04b26e6bd94e22de7a56b3e99a6ac5a
Date: Thu, 22 Dec 2022 15:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671724287
