Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47D10100C6
	for <ddprobe@lists.linux.dev>; Mon,  3 Jul 2023 19:26:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7A4FC433C8
	for <ddprobe@lists.linux.dev>; Mon,  3 Jul 2023 19:26:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688412368;
	bh=2sow+OaE9lDQ/oez8ZRc6hOljPz8oxIW9WdT2ZFi/OY=;
	h=To:Subject:From:Date:From;
	b=sDuUUmWpMa8pJlc6Pta7VxRjOipI/XxtivoqgzpgQV2R86eZGGIr3vGBEzlxnZRpv
	 qs8X0PBKTMGY0/15DpT2Vze9HAFyBh7uRfmNS0cuxG3A6VSnpNEGxnw9YRLxCacKSD
	 46ZUT5/nuXiSbkAG9nAVJELJzg9Mjir6uS6IMX95hToDqok5F+mm2OGbEEEO6HaR4R
	 MNAatkYfTNoMBwjoyv3RxcgBm/br3i1hGIEe4sQx2Uzes7unK0bZqs9NRdQOvkEeI2
	 O/OVbtOeK1EJ2U4zxEs2tE8mDEagj5i9oNf66gJU9HlUHhewE8I01iC+ciXG8guXs0
	 iIGW8n5x4EDBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACAA3C001B0
	for <ddprobe@lists.linux.dev>; Mon,  3 Jul 2023 19:26:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168841236868.29004.5865765106193298057.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70a918b3d82fbedd2a26d1c509034f33bd820805ff5e7645f68699e8fcfc4f42
Date: Mon, 03 Jul 2023 19:26:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688412368
