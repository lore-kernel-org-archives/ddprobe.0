Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 361527F
	for <ddprobe@lists.linux.dev>; Fri,  3 Feb 2023 07:26:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA22BC433EF
	for <ddprobe@lists.linux.dev>; Fri,  3 Feb 2023 07:26:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675409165;
	bh=UW4iq5IDL+5EcVr0JvP6EeIgyzvOOD5DCEEK6+4s8KQ=;
	h=To:Subject:From:Date:From;
	b=ak45PLVXvNKypam3SFqyR34p7oHBU3J8vcDX5lP4BF6n6MZAN5+n8H5DEbGPQuvRP
	 qHiuFfJygYF7eeMDERhjDMH/45iE/d7uU90Nymc5XSW6kTClAgRGrHvtT2LqkEH5l3
	 TY8VnIDafg34N+/Tr/PfoYW7Y8g2eYsWBD/qxV8gtixIrV/DiZITvgjmCMXCrXxVBk
	 SKCrz//o4anhuKk6RCncUI1SloybxQNyKcR7RjB8qB2ZFUEwhM7c1kGuApqYOJjkhn
	 U2s2zZSK2JkuInUXQkD7V6PolZBuJayXOvrw1kW/MpH1d+rX/KMy6C9jH4gr3WXJAj
	 O/g5JgJLKQ4jQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1FBBC636CC
	for <ddprobe@lists.linux.dev>; Fri,  3 Feb 2023 07:26:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167540916577.29880.17970138681961245049.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 153c91ffe332ec637b78edaac9ad9fbbd3cdc5d4dd9d05a60ed2a39ea66183c2
Date: Fri, 03 Feb 2023 07:26:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675409165
