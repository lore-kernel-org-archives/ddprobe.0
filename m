Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04421125A3
	for <ddprobe@lists.linux.dev>; Sun,  7 Jan 2024 05:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nkxg6fQT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C144C433C7
	for <ddprobe@lists.linux.dev>; Sun,  7 Jan 2024 05:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704605896;
	bh=9RvY+bYvEAxIWtF37dXElUqaSnKJm6BPoSWiCvJssdE=;
	h=To:Subject:From:Date:From;
	b=nkxg6fQT43Xpsbf6jbnW9UI9l66frG9YRqc9AL5LVzME8eo+LaWvjfVLdvqGtBPp5
	 BQpyz3cHDAJgKxrGlUiKm+YFwkxHJOPUTxV0X2IufaZOPMLQnjFc5yY+P9hAc0SZN1
	 BiDnXroQs2U3z9o4sb/vrahWAUG6DOKNJkTKlJyK8beCNq75xDxLh/V9v7ZUF57BEV
	 uzekUtZLc4fwKpe/mjigWMigcXHLgSg+BcJkNXhLyG6U4gd09UPSBGeHtDoSDk7uc1
	 aYqsVlceu566oQr2ZFre33oU+ofecTlPcwYExttefRAgyeT0hluKkNliibzUSa7U+m
	 eCZSvz990HFWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F9BDC47077
	for <ddprobe@lists.linux.dev>; Sun,  7 Jan 2024 05:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170460589637.8489.9669479421426695356.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f973172abdb6ee9ca291321f0cf2aa761de696099151cf73a619c42f4395a06
Date: Sun, 07 Jan 2024 05:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704605896
