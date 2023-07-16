Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63BFC1FB7
	for <ddprobe@lists.linux.dev>; Sun, 16 Jul 2023 14:01:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBBABC433C8
	for <ddprobe@lists.linux.dev>; Sun, 16 Jul 2023 14:01:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689516068;
	bh=zmpLuJV8aj7xKksbgB7BhJ9z780YlNY9tti3ZIYn0C4=;
	h=To:Subject:From:Date:From;
	b=rivFf01OEHYVBkBi6iWN7t3sA26ftxZKcjTMfX+rnV7kE5rUo75Zo6pG63WPzSznn
	 xKBHjG7qhRVKchr7pGcti/7wqjze/J1OvgA3OC9vyUsRW/8kMa4Lb4EBfWmMARKNr7
	 F5FJLPxqZqwiJ8GBxSr6EWidX8AvOlm7Km8N6Ds7JZ5wXjFQrYrmIUgwhdjaW9Y7dk
	 jNX0U1vBmycpSUHmjc7a38dZs7WL/2G24dasu8nGFO/1tVuuuc3lcNhLwzCiZDK1t0
	 gN//APBpjRVlsvcFBvfpjLW1WKnI+9/WPZbv+e0A8FWWYKANG5k/+MElkO10j68N/F
	 wFbAY7axJTMAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF5FFEB64DA
	for <ddprobe@lists.linux.dev>; Sun, 16 Jul 2023 14:01:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168951606871.14419.12598319075702879142.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f0d36797c39069a373e5d596c46c48f6b56f741f9fe9f64f3f25ff21566f0ad
Date: Sun, 16 Jul 2023 14:01:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689516068
