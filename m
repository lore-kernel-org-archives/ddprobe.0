Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4A8D2F43
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 00:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7CE4DC433EF
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 00:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671408087;
	bh=yQdYlKdOQJX3ve56uA6t/6W2qRqg4r/o2C13BwFVYl4=;
	h=To:Subject:From:Date:From;
	b=b+UP0mXSm+wvP1DKtK43I8xwuQsZfhSJ1D6VLHaJS7KkNnAS3yBfXsXFteH7g6hte
	 990bhPOpVp8ri6X7MSfbyEZ6dry9CbJJ4BMhS48aS0Hv/qp8eq6N3W49nDBENtDZpz
	 8SLsoV5WBAkHy/khy3GCnRplY6l764Ln9HTJaYeLhv+UmMUgpp4KcbR9WLco+XcWjy
	 rvAV+mCsyVO13Fz9nfeUz+TEUP/afcZBVgpF7hv8R9vtQODvXBzndsIE1dl9PgA4AN
	 1L1/capcHHKNhSxbKzQaO5P+OXKTy5aMMGNkN/I420w9j0nzUoN0ImBOBy5zoRGiK4
	 7dcT6NxvlTA/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FE77C4332F
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 00:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167140808738.2231.16715920425363845717.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78589d17f362abcea99cd710fe19aded65778084ca8c4003609cf00ba3f3175a
Date: Mon, 19 Dec 2022 00:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671408087
