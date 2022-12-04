Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C23522560
	for <ddprobe@lists.linux.dev>; Sun,  4 Dec 2022 10:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76AE7C433C1
	for <ddprobe@lists.linux.dev>; Sun,  4 Dec 2022 10:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670148654;
	bh=QP0bvzc3RFTds4FBY5L9JIxw+q59eFuwCGKvlEgq/W4=;
	h=To:Subject:From:Date:From;
	b=qwpLRcZbcwxgri4aDxyBEHkd3fiL22RON5xSSKUzzUYCJrXVNP5wgwmB4sN390NEi
	 jdhw/EFdOv6cZN/t/URkOo6I6pV0PnLmX04v76XaTrpDbMr+D34UJwrdZ2n6KJuXfh
	 2ldP4vRHGqtTxBD2aH98zLlPV540SwQOC7nOq6xVfFrVV6rOvgAErudf7t08EWfFE7
	 4w66kzF4j7uoTeb6HUMZRmnvKZ7HwzbpKd9kERfTyV0BIvuv83yRodcL4s+W+jISJO
	 10WQmODVzdO5ie6gaaBmP71xRdWYhFQs4QTxj7JbP5yRSiW+2tng5O/Z/+cWwRpr0z
	 ek1pamVr/QkJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55339C4332F
	for <ddprobe@lists.linux.dev>; Sun,  4 Dec 2022 10:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167014865434.9336.12745085614562659886.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c43034fccecbd6fe1af84d8b56a44de6eca520931d78adc2ba31332056b4d6ed
Date: Sun, 04 Dec 2022 10:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670148654
