Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C368C8F69
	for <ddprobe@lists.linux.dev>; Thu, 17 Nov 2022 22:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71152C433D6
	for <ddprobe@lists.linux.dev>; Thu, 17 Nov 2022 22:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668723054;
	bh=sxZ6VTwEgEtysdyevev9a+Skn5pARW8XBIuV2Lg++cU=;
	h=To:Subject:From:Date:From;
	b=suDd+G+Y3ojvH2zTg5f75HrL1UeoaxhpfLUaVHpuKQ1pr0lrnb4/JaNDQTPvPDT/Z
	 CxS1kMo5YS6546bIlKSR9kVwbp165p3FjTOTYwMD5gxb7PxGR7D0bA0eaQAAAOy/sW
	 H7fjg9cvk/TIuPqZ+RgkODuXVGm08d56BzHbX7m1dfCRruoN607/kJsM9tiT8r5cZf
	 q/o7VazHACs2QvX1Wp86Meio2MRMGTT0EOW3nQFwcY5NqUuwq5TFkGqrytM2wHYQ8l
	 rDxGA7B2/v7Tj8bLc+0wNIhTGVGG3ZDJwrAd7WZ7KifiNN7W9Zbo9WR3LJxh4OuiTw
	 FbQAisCzQiP6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55916C4332F
	for <ddprobe@lists.linux.dev>; Thu, 17 Nov 2022 22:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166872305434.26782.18353194801887921591.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f98eced7b52566f52ec338f302c05bebd0629334dd57944a33f8be569a56be01
Date: Thu, 17 Nov 2022 22:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668723054
