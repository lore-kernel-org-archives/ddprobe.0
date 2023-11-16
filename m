Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 097F263C2
	for <ddprobe@lists.linux.dev>; Thu, 16 Nov 2023 03:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mrVRxU5v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75DC0C433C7
	for <ddprobe@lists.linux.dev>; Thu, 16 Nov 2023 03:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700104696;
	bh=A6PMEuFI6fXm8/o1rAxVrgqHgQN/qCzemZ7MlxuJT6s=;
	h=To:Subject:From:Date:From;
	b=mrVRxU5vZ2rOjURG3/YfouLFFm8ufsAbqEuKuwMVfQBmJFZqFDoM9xzYfD+P/+nLY
	 PhnL26VLuysqiRwF0RzMr8NJUj+3xrrUUhIp4P7iVHQT1Nd9rRVsS+smLBw+p3ikwc
	 TOixBeOUqJVD+LyghzeMTqzKk71J9fIDHbNsyDtTlHelYHmcw1WULjP0SN17bZeqoQ
	 mKY2ZOWYhBHSI3eQZ+GSMeN7o/wuLwLh08KIcgaUbVnMseWDs1iAAWWH46rB2FJ8Pa
	 igZU7IEm5tHK0l79qCh/aGFxS9dotT06MzZp6gxea84VM1w2niZqfbsGxv0RsRzJad
	 JjT1sZQFGF8dw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C128C072A2
	for <ddprobe@lists.linux.dev>; Thu, 16 Nov 2023 03:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170010469636.843.319528242613397662.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23ddabc88350431b01b6f81eea39e9d5c5d4976ef9dd41461ca068bb337df3cf
Date: Thu, 16 Nov 2023 03:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700104696
