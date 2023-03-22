Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 274DD2FAF
	for <ddprobe@lists.linux.dev>; Wed, 22 Mar 2023 16:49:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D61BCC433EF
	for <ddprobe@lists.linux.dev>; Wed, 22 Mar 2023 16:49:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679503745;
	bh=LkurZITgeThmOYSPAdB9dd1jy8dC3ng+I/N9xWT/eB8=;
	h=To:Subject:From:Date:From;
	b=tHDvRAyp8HBxF8XNxu1WuClQEyqpI6iNngDOr7hIR5fdltug2yA94OM+OXCt8fwlT
	 QAHvQNqtU2OffctLrlT85nHcWmm/2TFoiwU5HUeIQfaZMwGeeEk7D2axGIvtTD1CGB
	 REk7QXmwOD0OgYZ7ZWHF4FhEGfs+jHnRJNUe0IaXnC7bR+pjalgInkWj3Hkc4GXaCZ
	 pZCHn9QNhD5KTB0/4S+EU9EJbe4KONyCyQ3PvDwXM9TQzUDkWUwVOHfynsM+89tf8O
	 u4PIj64U/FE73CMR2LUZjd4R5rmCaXoE609eJ+rAK7domM/Dt8judHZqf/uxRvhs75
	 F00V+0vG6oxxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCA59C6FD1F
	for <ddprobe@lists.linux.dev>; Wed, 22 Mar 2023 16:49:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167950374576.29342.5326764071747765597.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5731dfbee69361fda18b519161aa45a73d4b56aafc50302745a69a19f12065d4
Date: Wed, 22 Mar 2023 16:49:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679503745
