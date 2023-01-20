Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8FC417C8
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 01:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B7A4C433D2
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 01:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674176487;
	bh=rTp2PZGtVD1LU9fAKipXh+m9JQ84usyV4sMXEmjDvqE=;
	h=To:Subject:From:Date:From;
	b=Rl/hzkPRjYWV2dEVJw1827v7iyKdNwGVu4BhoD5TkZv8ar8ZeCryxg715ZgBt9Dyc
	 yHK7qVuTWIU4XEK7Gdb67rleHYuoZMlTXquPgQG6Q15qTk2wft9TN5McZAW71BmIsT
	 T8gxFkEwlHw2u5GayjAzrAKJT0A6/8Nc0nzkWS5OxvifXGDozk/hYPDFmH0OXK4CE4
	 ghPLo9Ml4RtyVBIo2Ekm1M1raNW11IfZX7BW/J/7MYzvc3fVYRv5M82xUKVDirA/gg
	 92EKU8DM2KSi4WrtXkFbAwgP69M0bMnQDnZKGX4d6o/qIO9VNWnxbFuaKc22utD63O
	 5OSdZz9DnTx1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60504C678D6
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 01:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167417648738.25126.9159200027830522743.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef09338a591b7466d35062ca6466781d519c4c48928bf52a3bd592aa07a3e427
Date: Fri, 20 Jan 2023 01:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674176487
