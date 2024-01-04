Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6454320DCD
	for <ddprobe@lists.linux.dev>; Thu,  4 Jan 2024 10:38:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XIDXJHvc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAE61C433C8
	for <ddprobe@lists.linux.dev>; Thu,  4 Jan 2024 10:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704364696;
	bh=RrMKkhDbPfoeHQEjBEHyzHOEooqXLc7P9YArODS4MkI=;
	h=To:Subject:From:Date:From;
	b=XIDXJHvcQHCrsbA3wENEnLhbVoxLK/+3vJFWVdYpffcwl/5/gTSceSG5TLCM/UEhj
	 gNCyTyaKcThyFvX/kFmv7tvIhrO4HxbEn9Yn77cOjZXPN185LK+RmSf4fPhhiLIx/F
	 b4uX0R1KJv5Kz1CTB7teprOU0mZkauCzezfojuHhAA41Qps4ph8y1oUa3qRzstWTu1
	 6VvEXRFUCgpdCM7KNkYxiD1k64kryL1Uj1YwHJR2Dz55iMW0T4lm57MHuS5HRZLRgi
	 O3bWJAPnr37CaDN6v9XbYxZ/XUZ3Z9uFoZ0c1iONoXtAmORTsXzTioCq/XNUjrSbPg
	 xGPCHAhvoUbOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8BA61C47074
	for <ddprobe@lists.linux.dev>; Thu,  4 Jan 2024 10:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170436469655.25205.74835572644751914.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1aaaa8908252d1e62d25b30c3b26547fa627ef450598031b24b6e04b616c6126
Date: Thu, 04 Jan 2024 10:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704364696
