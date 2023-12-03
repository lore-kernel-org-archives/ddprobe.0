Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F39F528F5
	for <ddprobe@lists.linux.dev>; Sun,  3 Dec 2023 09:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CaQtvZ/k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80335C433C8
	for <ddprobe@lists.linux.dev>; Sun,  3 Dec 2023 09:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701595696;
	bh=0e61Lz0hKj3s9dulZ9eM1HweKbK8gVbbjopw6f6kLXE=;
	h=To:Subject:From:Date:From;
	b=CaQtvZ/kLcsC9nFc/ocZRyCChAp9w1P16lc6o5YWnydzxKlwubA/cCWkfWRc6Sa+I
	 5Y8GDlgPxDzisZ0CaNPYrszTxnq2gFgqnqvD9E1CypZgN5n9VT+5q3jg2gg29TsLn8
	 IweCo90LnKZwK1JHZ+Cr0+rAb8pZDWXjquBdL1bAzGI4VjuuJmbMiTE/bPkO+eMECi
	 rFxeGQTIdvY19VZg7hf/pIeFmTJrL9DEtMyxL2hPfEmI4QSS3IeNEHSCDdUbUgLlGH
	 w8GM7g9mWnxo5gMUPhnsHRr/tq+dKl9rqyFrI2BEzrcLf0CUspRuOHHbmjrGHBu9Us
	 Hx8pkD3CSTuBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61A86C4167B
	for <ddprobe@lists.linux.dev>; Sun,  3 Dec 2023 09:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170159569639.27353.1782266794904270439.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aaac8ddbcb485ef7c027b4a93891fd0017e9fab204e397cde264ae83b76760a4
Date: Sun, 03 Dec 2023 09:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701595696
