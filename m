Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D304368
	for <ddprobe@lists.linux.dev>; Sun,  8 Oct 2023 00:47:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KEcrEezU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDBCEC433C8
	for <ddprobe@lists.linux.dev>; Sun,  8 Oct 2023 00:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696726028;
	bh=0JZ2HOcbBu5/cRFvySftGv51rQMVNg59Jffpd3JbgzM=;
	h=To:Subject:From:Date:From;
	b=KEcrEezUY/v/cXI0ocH5p4CYKig8kCzNxwoyIWC97y7wBOe0WVxO5wTEw6ATH+HkB
	 28WINKV2IBBKEBKs9C58ufQ136LRopVDcpQwcsk2tt8EFK/9wGc8OEuAhXr8Wu7SsW
	 kz2m89P/MApLff1H3ghoeJ934rJcQPFGxHEMMk5VgKcr0OBOuH3Y87UybKXBwTzIhd
	 JH9JfZvQyyjg+H6Mv8EvgClv9CJBgUmAjisXz5cEikPgs57Uj0p4E0L2fRIajXfQcU
	 Kt/K+W8bRFgEqf5O6mwzK0NVqDCYuqpEkGec6wpAOklhL8Ff6iW6odBTCoj78WjZ1h
	 v14OLz30/U0vg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAEEBE95A85
	for <ddprobe@lists.linux.dev>; Sun,  8 Oct 2023 00:47:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169672602869.5367.10195714786217675260.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fefb77bdf8027caf4d8eadd511205127177887ea33dd782c7c3ae53dcc4dfa0f
Date: Sun, 08 Oct 2023 00:47:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696726028
