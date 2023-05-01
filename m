Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D1878C05
	for <ddprobe@lists.linux.dev>; Mon,  1 May 2023 21:53:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1DCFC433EF
	for <ddprobe@lists.linux.dev>; Mon,  1 May 2023 21:53:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682977985;
	bh=pyR3WB84XDf/yJDDslH9tYKy7CvwoGPbJjI0otDY1ro=;
	h=To:Subject:From:Date:From;
	b=sh37harTSzsj7bSgca9FV4IdTYXA1XujuZh056tVGZ7Fync3AmYNrPsPabHVXJQri
	 p3Iu7YQoy23IxrJnBUy7dLFgxIWfSDkefDCDlivDcSG8jNenCo9W/f1mTyAXLbfYvz
	 OLmvURyvSi9gByetWHw94bmZ326zrTP16JeN5VpqEPsyx2wSLK8r+PzOSEXzFIVosN
	 blBtTkV/43SKuExAUYqDKYN6OB1FPMcYfj+9uvDJJa9EIvwtpVysjhdWMrUTw/AnUC
	 SaCLSzfKRFA5iOldqfqJUZjFG9LSi6baldAnkscn1X6JyifT2styxlPxsHZW6OaVcd
	 hdzeZHFbXfqRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1DA0C77B7C
	for <ddprobe@lists.linux.dev>; Mon,  1 May 2023 21:53:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168297798578.12156.794226157174328036.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd7e244a41b2112b3e989f54f848056e132905f3166106db1bd7808d08422c42
Date: Mon, 01 May 2023 21:53:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682977985
