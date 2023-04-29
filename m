Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5708917CB
	for <ddprobe@lists.linux.dev>; Sat, 29 Apr 2023 02:25:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EBE07C433EF
	for <ddprobe@lists.linux.dev>; Sat, 29 Apr 2023 02:25:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682735106;
	bh=iUZO3V91rL9RiIswpkfeamZlGNMBVk0CsgI52v5ALHY=;
	h=To:Subject:From:Date:From;
	b=J5W5Am9RbYpCFyrcVXEzZl0ydHEthjupkWoUCBqptm+WYqyQrg6Q/bZdYrWhMVAVn
	 YNmflVZYgBXulm+RF9sUNbHFbu1g3du6eC8nOS3FELP3fhYQmXw7YKfA5afrl97q0r
	 w3k52B0AMs1LYB1c+usmkPhWCaO1IS0Vj2Sk3HhsqPZF2b00MDtC+OwJnh1ALS5anY
	 FSYdQRRxPn2db08shUSJY5Rsw7NhiodzqwoFbvPqD7mc8k5rcrkrYMdpCDg1RCGzvG
	 sNlv1AChbcimUfR+wzkp692kTQrL13PjVEb5/8KG00Pw7iHu8YA8xnTyKzp9/EargQ
	 fkXOOpQGvUMVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CF382C77B60
	for <ddprobe@lists.linux.dev>; Sat, 29 Apr 2023 02:25:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168273510582.6791.196800776509576085.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f516a47caffbb284c2fb68ffead76a4ce05ffc3e9e5eb5dd7f0bf1432fc3c67
Date: Sat, 29 Apr 2023 02:25:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682735105
