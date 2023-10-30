Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32155137E
	for <ddprobe@lists.linux.dev>; Mon, 30 Oct 2023 08:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y6irP3IC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C2DBC433C7
	for <ddprobe@lists.linux.dev>; Mon, 30 Oct 2023 08:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698655096;
	bh=A01KO1WnP2iRy4ooRXuijugGvB1bYw4tbnftd4BtlmU=;
	h=To:Subject:From:Date:From;
	b=Y6irP3ICnxyi0TgoSpgyFh6NCTRnDBQh+8a2Welq9sabx076izhY1Okm+w3UmjrNR
	 XL+hl10xAQuGJT0gn1gmbPZqdNO0TWgTRMnqq7uQWNKzQz/gLJ8QuT1mp+fo1xS+D5
	 uiaYhxDc6SpQmN/peYCqz8TPq+weDSdL7EELKlO+IYGNTVuPNIXiXOpNlDbvpmtDhR
	 Qh2Do1jn5rDNJTD4PBBKhUjzudlezvkxhLN1vv6iJcXkfqoW2N14LxaJfS7Ius5wKh
	 MbkqfG6WydWmhQWilVbD3n+/lpyxnHFtjWRLeUdhu9RFQVgvN84gc90P+DVBittNl7
	 apPWcZqBbxFnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6F92FC4332F
	for <ddprobe@lists.linux.dev>; Mon, 30 Oct 2023 08:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169865509644.11651.17271926284507549960.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82fc2f5db057a4a76b841e26bb367b8a7c55ad75681aa863a9f5023303a7b018
Date: Mon, 30 Oct 2023 08:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698655096
