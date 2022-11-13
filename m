Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C176C6FC5
	for <ddprobe@lists.linux.dev>; Sun, 13 Nov 2022 19:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6DFF2C433C1
	for <ddprobe@lists.linux.dev>; Sun, 13 Nov 2022 19:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668369054;
	bh=ejKazAptl+/jQznFI32+0KSX5YHSMwl+Jw2R+kGQlaM=;
	h=To:Subject:From:Date:From;
	b=Y4nUbHD3haCBdFoS19p9di2VgKNuOlIXNoJv8RkmYgqXfW4ZWiNbA9PO8nrSZ+dQi
	 JYkoRPB/ZHJ2vqy8sZZF8ji0jdDTSq+zvKzEN0N+u2y4HPWjZbQsU+YL7zf6xOiQxw
	 0d++CqZLsPOcLtcvp0KYv7I1Pd2oJ3xJ9Gnfv2nHnwMQ/O5PkUQLT868/tSZ0CFlkO
	 lwHKevwKhOo51Tct/6qIvFbadagSGzumUEgztGVGC+djnUcWz/stVcpzpgrEQrIibZ
	 dK2M5Q9mxDDJVlA2tZSidtZ6yf8XLBghlTkc3OkxbzfOrn/Cgbxl1k5CCCB0pBu5ct
	 bywbIehAZuJdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 536F9C433FE
	for <ddprobe@lists.linux.dev>; Sun, 13 Nov 2022 19:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166836905433.5634.4251607277839387042.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0de76486d2439a1efcfc6376f2afdaa5f19b99d9037868c417aea3e21f458725
Date: Sun, 13 Nov 2022 19:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668369054
