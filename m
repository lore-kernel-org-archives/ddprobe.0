Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B111367
	for <ddprobe@lists.linux.dev>; Wed,  1 Feb 2023 20:46:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4C85C433EF
	for <ddprobe@lists.linux.dev>; Wed,  1 Feb 2023 20:46:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675284365;
	bh=lFejsLAzZ/B1xDDSsdvqStSjcgT8wkIEzJ6uTCiYtbE=;
	h=To:Subject:From:Date:From;
	b=oV1H89qS0csL82tlGDxLK4w/du/CA2lEf4+YyZxvmwvwfBpmWdbfQgzldEvYw1fKA
	 5DycPYlogY7UPJ/Oid15fYNcXYADNK0xGBSipEG3RTqLBxGrg2MD86v8gU2UwW9EF/
	 iVQxG/t5xR++6nRcpwxee5VBZ1oM4EPCPU4Z8iPT6qHym2FXtG61iiZlw9H4bsWsTi
	 AoXMgv6kXFyMIWRtRlLSaKsKyR0F3hUqtiAH8x/5t8Vtn+BBDsUiI/jOrot4k23ysR
	 KOxNBN8XUyjN84MYrcfgqwInrhq90wBHdzhS9duV27s/ryvfOd1Sqee6w6d9Llfy0W
	 xtzCBRQZbSQdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C14A5C05027
	for <ddprobe@lists.linux.dev>; Wed,  1 Feb 2023 20:46:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167528436574.11231.16281999123150644860.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d742bc198f19fdafca9811dba4702711eb0f1cf30e262e43ba7caceb10db6b2e
Date: Wed, 01 Feb 2023 20:46:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675284365
