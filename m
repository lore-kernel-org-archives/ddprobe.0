Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D41C1A4E
	for <ddprobe@lists.linux.dev>; Wed, 26 Oct 2022 00:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6EC75C433C1
	for <ddprobe@lists.linux.dev>; Wed, 26 Oct 2022 00:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666744853;
	bh=vmKeEQxt1EzUDJiTBN7jVtNN1GRaWwgsUt9ODkaR7gg=;
	h=To:Subject:From:Date:From;
	b=ZbOlxT1U3pRXlV66XgJ5z2rTQbb3J7zmiACnrgijurRGX+u785IQDBDb0/IPZzrOm
	 JSfyTGKi9JJi/TMFY+xTJ1/CuwR0afWx65Hpyj2IVsp8HtAaI5dJGTqDALxPaKchOL
	 SxW1Y9QvfcmudvTtNS3CG7/RZFrN+DsNdSmFPXJPKlGE4SMcbt8mg2hlDqB/9b8JlS
	 ytbwecK0sSwIHmG3p14P16PeJl8MS1415kliPmVKvJgemBZL+l7kvrkKHjsG8TO5ID
	 ncMoU63FP9eB+k02p2TcETfi/uVIhuXyD6LzD0FpBulcUheRuNgwteiOe0WccIVPg9
	 HQ9OkEOW6uSRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52C4EC38A02
	for <ddprobe@lists.linux.dev>; Wed, 26 Oct 2022 00:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166674485333.19945.11834489951681510532.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc518cabfdc1bb364bc623179c6b33d0a7b2bd10641ef76381d3569775a7b8dc
Date: Wed, 26 Oct 2022 00:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666744853
