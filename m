Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 557DE37E
	for <ddprobe@lists.linux.dev>; Tue,  8 Aug 2023 01:33:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB30BC433C7
	for <ddprobe@lists.linux.dev>; Tue,  8 Aug 2023 01:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691458388;
	bh=W78Y1QdGiNaWR+hFZsrahHT6wDCElhp354q0uQQE+jA=;
	h=To:Subject:From:Date:From;
	b=vRGuUF9g7AUNBlpiSQYTIwL1nvxEQuR2/x8gQMKBWgXXn1atVoZ7AxofgGUrBWwyg
	 5CQ6i3LsEnYEr0YU+AXR0YB1WkjdcZbskQ6OMPJwg7KdrRxXg2ky710Iw98S/A4F9G
	 t4YLMNHWQDakDfiQNkDGbKm3U3Hl3lOOTso3cZMj4FFmSk+qPjqaqHliaIhwCRbKO2
	 5OEcXmS3XyIsLNR+tQI4QXI/bL0pUtln+dnZdmgfA4MBgvDVyhvAekAVSIUD3teThR
	 D1cJOoF+BIZ4G4NYhH+d6+K4ksAOYc6tdFdWVbdFJ9v0WT7Uaoun9NdkjUaDdzmU7U
	 k7JvKwIPT2ZzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC9F2C001DB
	for <ddprobe@lists.linux.dev>; Tue,  8 Aug 2023 01:33:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169145838869.25902.11712449045513123819.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5fa99329fd42c41c96931c88f867486ce577d639fa60218640f967ecbd1b83d5
Date: Tue, 08 Aug 2023 01:33:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691458388
