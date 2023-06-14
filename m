Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 78BD87F
	for <ddprobe@lists.linux.dev>; Wed, 14 Jun 2023 18:47:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB5D4C433C8
	for <ddprobe@lists.linux.dev>; Wed, 14 Jun 2023 18:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686768428;
	bh=x27qyrwF+iOCfx9Wtjge3Oxejt7KmTJkcPKhnfUWpnY=;
	h=To:Subject:From:Date:From;
	b=OqOV9+HTJrxRLvHKiOtU4bfjBD6KT/rCqNInrHUtsIh2jIgVFTYW9WQZv6Rr298Og
	 TR7TQK044oogPeG7yBxiRw2vFPD2AA9NPzLazICmo3dWU1UZ/L9i2JPw3UwD5iC6ZJ
	 /eZUR+gnkiBpv3OaV5g21tW3c6smZ+1Wg6iwfdYIVcTk3fIy+1V8+UZg7Qb2EJE5Kg
	 QRUiP6KhTCRN9qjytFWPpy4zcS8dNDHGO1eeIFFvjxFSftlgKmA5kQEnO42qEXeZnE
	 IGk9RduKg8iRMLCCBtxajDOJDP2CrDAgI6xEpHSV2rNflkI81L5THvAhCZsbyIrQq+
	 WIQgmIHNxDsIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE0C7EB64DB
	for <ddprobe@lists.linux.dev>; Wed, 14 Jun 2023 18:47:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168676842869.23382.13264111454215089687.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94666268274242cb65d13d5ae031d696c7b1984953eac6c1368a18b68d30cc2a
Date: Wed, 14 Jun 2023 18:47:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686768428
