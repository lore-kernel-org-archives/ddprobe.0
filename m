Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DCAA92CAB
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 12:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 87DAFC433F0
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 12:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670590287;
	bh=RTCvN5HRH+TtjO4FMC+qpzX7amxgYaXGZcPitv9KF7o=;
	h=To:Subject:From:Date:From;
	b=neMwC6K4sB3hecAiXMYEZcMl9RwLfQXEvP6oEZ5QUv5eKqevoxBjc5dGU6w9SQzNT
	 5TDRDpe26OchE+xJQDI8tVsxFCTH0O290rYz0bISJh7f54FvlcEcPb3rcMOfMkjM43
	 yIGygitH+9VaLkRaYWKrRXUE5W/NjxROEPP82KEbnVQ2tBBUXr7TXRE38oryS5zxoT
	 CnM9ldlEES6wKkd9a9aUZJVw8Rb5yg7hUXsbEbCycQgBAtn26KFp6imW6s3gtC1rX3
	 ZAw1KytBUQAMMW/5GK7ZBtHU3afxkIo1tMIEUhmz3OMzLZ3Up8ehTTpTRo0wSmxciT
	 uJvfP8Ecbwq3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 701ECC04FDE
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 12:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167059028744.26852.10174747269693002667.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2635a945207e1fb282e5f045f3bcc5c6759d5191fb3f6d909a4ba86c034b1ea9
Date: Fri, 09 Dec 2022 12:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670590287
