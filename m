Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 358F2BA44
	for <ddprobe@lists.linux.dev>; Wed, 22 Mar 2023 22:19:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5A4FC4339B
	for <ddprobe@lists.linux.dev>; Wed, 22 Mar 2023 22:19:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679523545;
	bh=x4lA7eI06Xrhm1EPJAO3ENKjNXGexmeNpDprbt33nTY=;
	h=To:Subject:From:Date:From;
	b=S6BLu2k+WVoPVyHU5JJZeqkJQmCw96fNMswuT3rIUw/VQSeG4MqDRE411c56E+Acz
	 wZPzrBiPUJ0KEgOFZDS9g4LUw5WmuSREqcYBcNllBua7miAsjbjOmHdT4UOcRS8c0Y
	 MyXFtXPKfNljhtFtk7Wad4IyqDNtSKkKLr28KIh3OrMzIwf71IHZsUh+jRmfrJNg+G
	 5Ux3Y7JGSHEX21Vsjb8b864Wha579/A3YVVa5qdIrR9TjpRbllP/SDeoctgYwgQVnK
	 rnKdWxgf5XRCDjjI5YKHwEX9mvPOFrKDu0v9GJhUgRgwFdnXw0tp1NT5GnZP6n7ZAi
	 8iV+x4N8fDG9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C996DC6FD1F
	for <ddprobe@lists.linux.dev>; Wed, 22 Mar 2023 22:19:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167952354581.13790.3350742513360320149.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6b44023a6a9bad1220cf76c0c32dbaf6cc4a11a47f5565785b11fe783b60dc7
Date: Wed, 22 Mar 2023 22:19:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679523545
