Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4543C7E
	for <ddprobe@lists.linux.dev>; Tue,  2 May 2023 07:05:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EAD4AC433EF
	for <ddprobe@lists.linux.dev>; Tue,  2 May 2023 07:05:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683011106;
	bh=OSuCtI4QTTb0UpClokkWfgM+i07ZmxgcD7Ntl3n5XSc=;
	h=To:Subject:From:Date:From;
	b=CBN6ix/BwDU5lHModalVGLkVIgPGLYAY8OATZnqK4qNnW6X5jdjAk7D4xD4A+4OyF
	 dHYXQ9vFTCVtr1guWDb5imZTKbi5useg718HmfMtYgazCk4bVZHtsLY0+Us8kLIFnv
	 FTPFIWtDwN2HAZWNHDVpdQk0fA92KZmGwJhRsyKB9va2AFhHW6m9fKizEiKwNo/HCw
	 Db8uE2ft6fRe+NaRv0SXH1XUxCEbkDiduGK/yiRlF589EfLLDReyXjrQbLhpocj55W
	 eoxIgGc6uAoFuX7s4EkovTKqOcWWDvAz6jtIArh5ohyQEfgoGbfB9mLu49aMwI9N9K
	 HF7xP+QraZ5QQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB677C77B73
	for <ddprobe@lists.linux.dev>; Tue,  2 May 2023 07:05:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168301110582.25068.17570264065440455712.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ea4a5b6fb010f06f0c2951ad69b0eb9fa744092c5021a5739032f5291ba6a83
Date: Tue, 02 May 2023 07:05:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683011105
