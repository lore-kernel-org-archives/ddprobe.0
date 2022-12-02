Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B2ED17B
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 11:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70EF3C433D6
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 11:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669978854;
	bh=CUbTeOj9h0tnK8wqsfcOMKN5DN3gGuQcjDsmcbiQjxo=;
	h=To:Subject:From:Date:From;
	b=li6AhS/S0Shk+S7SGNB9TZ1QEWcREVI9CZiuVknSF3bPs+4BuWWQXdJmxWTsx/3Co
	 ZHTLMSylOmCqT4dTv9faWjSFMZVk98OSsdW0/FWVfGgPeFnrD0Ci2kQYwavu2qjQZj
	 NAh3BR5lSv5hsm9HIIwGt6Sn60+d/HTZrN5yQGYZDapz+GXlXwXKSYYGZUEkAbpxmi
	 1A5n1S9Gj+MEJeVJbsAe980QTkqD0j4agDGE3il/c6cM1mf+0fcgQnINbqqQuy8ltq
	 PbceS7n8cuqV2rh3kUhYR0kIHpmUqpMEbdnFTbpSx3/18iAUK49ak3sopdxwwZ4gO5
	 lyFUW/LlQsCow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56FE5C4321E
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 11:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166997885434.7982.479617437533918349.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24ac04000c8423f126199e2e75e480a36de380452049a3645680950996923cd7
Date: Fri, 02 Dec 2022 11:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669978854
