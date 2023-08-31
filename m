Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7886D1FD9
	for <ddprobe@lists.linux.dev>; Thu, 31 Aug 2023 07:04:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6C0CC433C7
	for <ddprobe@lists.linux.dev>; Thu, 31 Aug 2023 07:04:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693465448;
	bh=N0kz41z+oUyfAbXWEjQS8uCVjNB/KK68PjZpwHBeDA8=;
	h=To:Subject:From:Date:From;
	b=GRzTdcZkIpuzDeySCZTQbug+0p345Vryw1gJY8ShJNTJNa+CKxu3oty1QcmnAzKIq
	 ve7SSdLCYfy4T2VpWc0sNhvPHs1VK4J0+uYkMOFnaeW/F+fY4JUd9XrG9fidE9OSMa
	 Jwf89OrOLlNL2XzgVbW6hnGkfMGCEn63a+agqTw1XFAh889AvBhwNE85akYWANbfIk
	 OdYC7Kms6ZM2WaM9OVBbNQUl7KFD5Os4VBMunw7YZ+CHXeYvZBuZ9K42QWHgSTpo7C
	 BQWGRZTb9RqrLxSNCKdl3ppzUR3aSEgq/Q+8dJK2hhlJZE3EyQJSGcw+C3sar63bDy
	 0VLqavlUFm9GQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9CCAC83F2B
	for <ddprobe@lists.linux.dev>; Thu, 31 Aug 2023 07:04:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169346544874.18624.1002117731484331175.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4d19f64053dddfadcc9d094c4121a61340d9ff02bd30835cee5b6ed2a06d1c3
Date: Thu, 31 Aug 2023 07:04:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693465448
