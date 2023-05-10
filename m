Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27C1E373
	for <ddprobe@lists.linux.dev>; Wed, 10 May 2023 04:11:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0E19C433EF
	for <ddprobe@lists.linux.dev>; Wed, 10 May 2023 04:11:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683691865;
	bh=ynIJroqlO43Y3FFI0vBkCsRVj+1bvmMiRkjblR6rXeY=;
	h=To:Subject:From:Date:From;
	b=dtfBwXF5tCI+7+b5IXembe+VINS+Vo8LAG/cbqDFze92JWNvWKc/UpxXsgNFJF+HO
	 IyvC3MMuwZzFzsAwB0tnuZQcwdIFKDSM7CLRmBCUTe1Xbmex9yGJ4fXFR4Aoww0eOy
	 cJGHBhLdIoG16aYsQVyjAnUaCw/eaTuKRIjzjtnbvrw+CzCqDlb8slwmccVXNdNQlu
	 QYCDzUo/GzPq1yWuC8aQ8G1qcZognDoPcEZnxtJDBgpS3ddJBzYUFcLRZSsJ5YqWS2
	 MJa/avb/5WjczhqQtRJ+fek6myTMwUP/oBzsbxec/QVs10kTW1wNyu4R97dCdOVYQd
	 hkMJqdP/ipk7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B42ABC77B7D
	for <ddprobe@lists.linux.dev>; Wed, 10 May 2023 04:11:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168369186572.25899.15546579019882466987.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67cb70181eba3cc3af5f3455df55be8dd8daeee5d7fa2101868388b7c0c59d41
Date: Wed, 10 May 2023 04:11:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683691865
