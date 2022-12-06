Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD5F928E7
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 09:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 84B3DC433C1
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 09:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670318454;
	bh=WTNb+kA598uJsh6yUR7x7ECL/qgGZKFMAGljMfzXJd4=;
	h=To:Subject:From:Date:From;
	b=RVGZIm0hgV4FYsmMjyTorsJXtziSdI7w//hldsHFSBkO3kN/7wsEQFvEDn0Hl7E1x
	 p22fDFL8pyVpYd9K5Yqe7bNzeueWQTq6HzAe/vC/8CKiwSP0QK7cIXXJvK8KZS+iXa
	 a2XGy8JELgYQcoxANaaLLc/3CtENjDNyONKSY3JTSdbMahN9p/dtTimC3Yw0CauMfj
	 FpXEom8fyLLULIzOJc9JX8WQ+97jIoBp7jfgFnghE+uIePNTKaDxoMpeYj/oLaLotU
	 6UN1DU0S0jLgtiKLobobnOywsNq2yAxgSkeOuQ+M5Lw74rjBb5kSXXX7fSrEDqjl+N
	 YCzGxapKmJinw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67F64C3A5A7
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 09:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167031845441.17920.6681651768668413083.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ecf8535772a7cb79783be492e553c843b6de425d49ac86042e74e87d7896b47
Date: Tue, 06 Dec 2022 09:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670318454
