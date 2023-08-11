Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58CC76FDA
	for <ddprobe@lists.linux.dev>; Fri, 11 Aug 2023 14:33:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDC37C433C7
	for <ddprobe@lists.linux.dev>; Fri, 11 Aug 2023 14:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691764388;
	bh=xcnplsXk2zx+y/v1L9fwPX0FOebZOXEQOhpOE/vwCDM=;
	h=To:Subject:From:Date:From;
	b=sDFZHlucgneH7CjhrsyJwUS3xP1/ORVkok6HqmCm/GKzG7SXpMs4BpLR96Bu2sg7/
	 lJUo5QSL6phTcf0hfD7ITx6OeshGycmIdKdl11IF49+pGXQqKU5z7RuENzvJ3X9dSZ
	 zMmoR28SQ7d9K7mhNThQdOTLycZqCzOlv/+Z+PQnuDLZksfSwYYRNoo5AYBRdtsCMu
	 sz5oqyQpgYKmRYqFac4dZuZfXmWtkvfxZmTkE895XIWvxFKRCAwGDJpMnM2k68LUdz
	 EYXz3Eds8V2on+QnQCy65pfWS2c8tEMLAfV6StB4EZAvDioTWC7PuwlcZ7T1z6Sbnd
	 RHT3qVCxDnucA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A74FBC001B0
	for <ddprobe@lists.linux.dev>; Fri, 11 Aug 2023 14:33:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169176438867.2301.14821599964583885047.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7424a56284d42ed480a589e0625cde9503a5a15f36407b18b73252bf2ee4fcdd
Date: Fri, 11 Aug 2023 14:33:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691764388
