Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 675761851
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 17:37:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6F6DC433C8
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 17:37:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688837828;
	bh=q7yZl/U4WAcfShV1JEFpXbL25SjpgfSLGkqrl13SANE=;
	h=To:Subject:From:Date:From;
	b=MEMt2G002oeu1RkK9oPT+US878kHDYMmyritSYzviLue6u9IXBVU4gqS9qbARtaXf
	 Vsjoiu/GCpb54gua44ho63WUhQQXHgUbrgx48kfTuN++S9xxPgRjTppab1jN/XriMe
	 87VLo+1zlY/k4jZKodg8l5gmoHlBVl9ZqJuiEZqNydl9pOvEjkecfFwwvC1pKWVHmV
	 0JDEOEfoBAcpqi9wbnzBcAApZPjnBsqCI9cURheOQo86EZBp3bozG2ab9Id4eXVvZ1
	 4joW+Yx2hnQHlslrw9k61bVWmwJmQWuh61sZVyXDCFfdMonmVdvKviOjr3Ux2EjaYs
	 D21oNMBGbcCPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF809EB64DA
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 17:37:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168883782871.25348.9091482957367215870.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5e10fcf0c530102bf0a1b8a5c2e1a36df2db158a0f9b7786cbebcd51d0101c2
Date: Sat, 08 Jul 2023 17:37:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688837828
