Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE1C258238
	for <ddprobe@lists.linux.dev>; Thu, 11 Jan 2024 22:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="euaNnFnn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82349C433C7
	for <ddprobe@lists.linux.dev>; Thu, 11 Jan 2024 22:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705011496;
	bh=TEV+4OFAymZjdNwr2eebw6hYMGgBwjbe0Kk/gKqfvCo=;
	h=To:Subject:From:Date:From;
	b=euaNnFnn/v1LNxxv7N1QamZhSd2SuelrpA600l1U+cY2fRxhMyp0SszNaZAtzXPn9
	 wE0cqSZ/RrMIzhSPzgrRq09EkD/wIiF3lYclGa6YLYlqI0uJJVBos9dud0KL81N7xe
	 xm5hz7LWqslN37Rc+olrTkfF20PXfKf8HHHcmszlPlWw7Xfn8vvcWAMjTJ+jlVCKQK
	 xJ4+iZA9Qdfs9g2sFTif+RxyXUC2nT08gRwT+2emQaxk+MCrm+FLVcyuZjuQPlFqmE
	 GLGoYUkBnyAQqZIa2oBXrUkpUTVwZQgJ9pOQgF6x0BQW1ZKhUXOYxFj4J6ip03tlaI
	 6XTzawtXaRweg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66857C47077
	for <ddprobe@lists.linux.dev>; Thu, 11 Jan 2024 22:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170501149639.19067.12245582620028745008.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b40bc2a89328f151e0fbab1ff4359133a86b316bb0c7584e9a912caab8de25ff
Date: Thu, 11 Jan 2024 22:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705011496
