Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41213BD2C
	for <ddprobe@lists.linux.dev>; Sat, 21 Jan 2023 10:02:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDCD5C433EF
	for <ddprobe@lists.linux.dev>; Sat, 21 Jan 2023 10:02:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674295325;
	bh=IKYHcC1+7pVocEqmljJsRF9rd/jiXIdmUmgksDDPxW4=;
	h=To:Subject:From:Date:From;
	b=tyMjkT1zADoI+CfWuzhEQuSuSBp8Je8ZKgwVmXETpQTGndim1hErCRgR8Amzpbz0a
	 RiMTb8sUH0k103ksbNqXs0vJR+OFWHgeftgloaUHXGqlzQlCDSTd86/9H5nw2hesZg
	 elPlOcNIOLmGPzvH9PzUrgJuxBYMmEXGVxILEv6OxYsJ8S2eUMUzGG+caHjSsLZvNm
	 ScmZvhfRUVL2u9cFfQwB3d/FDLxqsuEL8rdcMsaNTKe4Q85jI4P+c4mOG9d154MKSQ
	 8Uwk2HWWehdWcf5jSaNtIF4af39s67kqiUbVAyWbMbe/4WUducHkjDnCzD99sdPPww
	 j7Ybq/sKKuvwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3A46C27C76
	for <ddprobe@lists.linux.dev>; Sat, 21 Jan 2023 10:02:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167429532572.8308.3809204658499526522.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f7dcf879cd0d755a5f7e605a7e32c560e891772b0ebd1c99211e9c20d54ac6e
Date: Sat, 21 Jan 2023 10:02:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674295325
