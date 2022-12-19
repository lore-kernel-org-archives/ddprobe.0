Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3E2A7E
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 10:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8DF94C433D2
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 10:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671445887;
	bh=J8p+534Lu2Rvll02CnORknLlOUe94F9d37TdFvk6Wfc=;
	h=To:Subject:From:Date:From;
	b=ncpccqu6dPnB/WprdiFw3uL/buohkDW1tOOylL8Cc23B206UBBIYUOpdxbZQhqx8p
	 v13kFjDCMJDg02C7rgxwdbRl4DwMgD31ZjRwRV6yGFAeNnknMLJZ4CfTjMLMLwAco5
	 8OJJ50ujZKXV9W87qaPBND/k55oHsbhlbzIFuFIe/BcKxkBKkFZ9k7ozFhN6jXCybc
	 FSXrXSaPcAtnJqIFn5UAWRxv569COSVn9WbxoFxS1oU4C6laQoZO5MnzqDxiZvpGEv
	 Dwfi3+d51kc2YN8mwkYWOI5ON7tHiEUdwUkYlqOWa/U6nWMfSj3hGMK3Zvh0y7q2sr
	 dDsWdhEkHX5fw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 72463C4332F
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 10:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167144588745.5052.11936145633287618909.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3cb38d6bb375d5657c6a50d90d473d68a5dbd97edc1724514651d2c11030f974
Date: Mon, 19 Dec 2022 10:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671445887
