Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51D25100B2
	for <ddprobe@lists.linux.dev>; Tue,  8 Aug 2023 23:03:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6FACC433C8
	for <ddprobe@lists.linux.dev>; Tue,  8 Aug 2023 23:03:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691535788;
	bh=owfwjnuZdCDFfFSI4TVKnnU2PKT2F2i2NZpkM5//Sdo=;
	h=To:Subject:From:Date:From;
	b=c3R4bv8PefEzCjqhRfTzkwNn4XHOxwFSqysKTGYZGGlihJBKXkvhcV29NSHc1b4gp
	 r9Pf7GUjNjV9Fm2cNMAYGWax2U+aZDtykISBs33LLtfi60Jw7S29DREZcIxCX/vEMy
	 NM+vn3obvAX6OmPnWA4SaJEjDMq6AcuMOMBXwn8YuzB5cojvO94H8b8kY//jag7rih
	 m24dHDKGMr0lUqrFkvODgCDxO/ye44qO8fL25CC/+KJQW1uienSGNov/vYRdP4i8h9
	 r2wNp1lhSSRZcgn+RT3bQYuF4E2NsAyt9RQW6k9SdHc8pk47KGru6x3MQ+PFZuPSHz
	 6UitFLr/FUTUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A93F3C001DB
	for <ddprobe@lists.linux.dev>; Tue,  8 Aug 2023 23:03:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169153578868.31515.1481474013291512455.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c23ce3cbeeccd4a5b6a52c783edfebd5ac36c320e7ef7b3e841d6926ef10d0b
Date: Tue, 08 Aug 2023 23:03:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691535788
