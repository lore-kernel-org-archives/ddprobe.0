Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 681397F4
	for <ddprobe@lists.linux.dev>; Tue,  3 Oct 2023 03:36:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D20E6C433C7
	for <ddprobe@lists.linux.dev>; Tue,  3 Oct 2023 03:36:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696304168;
	bh=OeedJ+ngGHvH9qlS3K5CXnw6qhSCEcLuGYWKkAV6r5U=;
	h=To:Subject:From:Date:From;
	b=eNNOSjTPxB7zJM/ZDDp4vvMNWsRx7j8qGUULyt4KvKAeYRoMIBSxOjox3QKDNGkYt
	 rBlgAFdHrluu4vwJKhuzxRny5vHb6TMe8tc94Px5TNMOMJDBP+UeDyziQmxzrMsnNO
	 IZHW6G84EIf5WJPb+2ttk282rkhT53y1N17Rk0c//kYXyMoPUUc94pdMwI5jxbgMhR
	 DlJ5BBmF1AcesEiUQHYC7VGUkfifJ0nanfY9tv1xezBTDKLqDLWCSyImi8yJTi8YcP
	 zQItjRbNW1N/LdBiyGAUArsbCvemJJrwR7hF0eYbiwmXbBcZOZrpzvmuocImB5vhp/
	 uNdMHz4zw0QAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB87AE776F4
	for <ddprobe@lists.linux.dev>; Tue,  3 Oct 2023 03:36:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169630416868.5652.3160110476918648527.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63a719c3ebd492f9fbe5e2de42664389b11e47feedf8acdbcbf1e62593348206
Date: Tue, 03 Oct 2023 03:36:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696304168
