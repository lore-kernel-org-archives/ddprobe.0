Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBC0D20E3
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 12:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 88AA2C433EF
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 12:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671195087;
	bh=ea8JlcsU9LOnk7qfmICEfBdDCewj7QumkYNGmlQg7lI=;
	h=To:Subject:From:Date:From;
	b=GpI7+1lp1InIUYHXLXpzmsZu5PyLKbenTqkh/eeHro6Pk1YDJKcYeMZn6oczDrXre
	 UJCeXJve2ieoQGEqZkkLrDgTL2QvbAAJ6/UmEaYKQ7T2GiaQHiPakDtnbYCusLf46p
	 86lMGN/zNxHVNf5gM7fxdL4IG9jIKwO555lOyOV8OKQFGxP6Nmgk19IlXWEgTWGGcq
	 of9hkSpazRr+oxl9za3E+3mfjvj3c88ZXmEK3VkRhmHESw27/p8D/9rJSwB0YVd7Nz
	 Cfxsfd7n/uitLC0VO3hBMzSv2TFDVNrZH8NvvPAWv0MtuWw649iXsemNceCgTefWkS
	 PEUHvkqQnptmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6F300C4332F
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 12:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167119508744.22859.11575207128005073079.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81f4533df87c14609d7f8eb408bf86ce0baf1eee12313ef2f40dcab5642a1113
Date: Fri, 16 Dec 2022 12:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671195087
