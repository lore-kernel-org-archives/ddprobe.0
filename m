Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD5BA7491
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 20:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7BD71C433EF
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 20:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671740487;
	bh=sv0I0UpHdkIL/0z7UlJe8DZxtiMFt2iT0qeC8U0k++s=;
	h=To:Subject:From:Date:From;
	b=oT5XomG9v3bhcPUDGCVojGM1NyHGWevMmqHePVhedbQ2YrmKDbWww9hokkTltpGJi
	 ir2I5DoAcpt9KeXR9okELVlTikd7b8Bn/nR6SwmnYPyZCQHwVwKAa8fwauX5G6Skmb
	 XzkKjLL6wHQyQeoF6iCGEKLAvMsrDEgVe6M6b4hnnQe9zz6UCKq4v3CCeDbqM4nljS
	 YmCtyTriLIllBobNhjCZSHN+/MyNtYsBJnHUTZj2ybRrEnlA8HyC0fpPMEqfD7Sj1t
	 KOlyv8xsSQQPUKGVHf5AuShBhMHdVaBBE+OYujFUZUTYlptgFzHex1x8/iNRtnih+9
	 Z+mIj+/6m7d6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5DE78C4332F
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 20:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167174048737.27271.1168883615107933804.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20a7538fc79452810ae4c213950d8c722741ad3dde31727fec38c04fab923424
Date: Thu, 22 Dec 2022 20:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671740487
