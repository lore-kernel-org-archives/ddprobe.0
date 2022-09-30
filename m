Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BCC117B
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 21:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D4B9C433C1
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 21:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664571653;
	bh=xr0SXQrQYkG5nJ8cwaFfcTt1QLohIiXBjo1W+8vX94w=;
	h=To:Subject:From:Date:From;
	b=rNLkBv/j7ssLVV6j1wqNVF9eHkBqO6EyQDIns+rRyr45Md8mKd2sf03BsF3yfeBAO
	 fYowb7UG1dw5LOMYm2i7XyX0PLPBCdDEgl+pAdn51EAI184r/+DeNV0oktlMEPperV
	 GNEswIDKOs8nB2laYk0jbN49vfBXgx+lzuNxzGVFa2SqDgjqCKsRhY4matSh562Tny
	 t3vYzugt8ebUaCzBo1GeI/PcqmqMXt2GD/8ayCogdyWAnRhbjSmcXXn1yW8HykUIZH
	 G09DyihciDwv8FbASVLE0YMfA3jPuvQdtSwNZk0FuJNNc6QfcpyCsNt4zGWkZTA7Dt
	 l0C6Raw0ay6wg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 569B6C433FE
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 21:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166457165334.19858.268945689761579934.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9747cfb02145732eca059bf15e52d878cde42e7fb584bef42709732d6fc14c97
Date: Fri, 30 Sep 2022 21:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664571653
