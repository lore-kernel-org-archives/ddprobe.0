Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DECB57E5
	for <ddprobe@lists.linux.dev>; Fri,  7 Oct 2022 01:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73A2DC433C1
	for <ddprobe@lists.linux.dev>; Fri,  7 Oct 2022 01:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665104453;
	bh=twplcJPuTYEn8eAtTrrVGr9GdJS7MtYlIV+DTbZf3Kw=;
	h=To:Subject:From:Date:From;
	b=a7Q/ZPUUtMCBYmcQmwS042MNXrr/OjJYqJb+8nLoxy+qOcK0TZZ3CJLQXAZ394RRD
	 yvqXFuPpSfzcr+bVOAA2uIYY3B/w3BK9KMmMznSUhE+uK73uA6xYZZ4vbb0C9/1RIE
	 vTjRZ5n18YSlhldHqSkhFlh9lUfU+GeUeZvvlNGqL0LNpbeduwIAlP8bFNTd0m+MCf
	 kXr9NwqTsy9iLmRqIDfrRjsFS8pWo0IiWYV7h5N9SkB7JyoRxui+V+0PWEb8x+xbxY
	 8nyxQD+TDmAAchOkV7Ui8L+FV7ZtDSuoqVztl5l/+7JNcKTfJSRkIfBusY9wH+lu/2
	 O+svM+7bZ6/Tw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E1B8C433F5
	for <ddprobe@lists.linux.dev>; Fri,  7 Oct 2022 01:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166510445335.20346.18337513036864083928.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4ee16228b46a300286354abd418554c5b43b57989fbe4eb4cc11dc0f75bb6e8
Date: Fri, 07 Oct 2022 01:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665104453
