Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B956433CF
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 10:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6FBC7C4314E
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 10:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668423054;
	bh=0VSAg9x6WmWUFKmLIbcq4Wy7ztr2w4yQuYnYWwzUw/0=;
	h=To:Subject:From:Date:From;
	b=Ov3RM21goNdHh43NPUEMqyA/q/3dGvjGjlF+TB6oEjgacKqZPA6iPhD8O5R+Jn5GW
	 3Oqi7M3maZlKSE0dstRVhpIArevJXQKcccbaGG9Jfkz4MeTYQCRCEXKTt7ehhUTwCG
	 UlVgqYlFvvD45PB2gJV7i/7cKDnHcJ6PgGouZ86Z8um4KQF6wYtmzJAsyr+WHjynWs
	 /oNPzn1jGlMA1AeWPUQ0xbUZF3BDUoek0Bvs4ZaxehUCsiGAQdlD8QOpg0C8EAj/KH
	 Ej/bVTnS426QWN0vQr32UpImAl62LZdw1w9pJVaAzk0Fn0TEKmJ1eR8KRWI6+Q7hvV
	 vA+Yq3EMLalcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51A2AC4332F
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 10:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166842305432.23454.3406824944254839614.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a688d47b15d5f3fb3e93ef494c602c2c1407197e1e8f5f01d4fde1c8986ab5db
Date: Mon, 14 Nov 2022 10:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668423054
