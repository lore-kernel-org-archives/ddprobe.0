Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 382BD8827
	for <ddprobe@lists.linux.dev>; Thu, 27 Apr 2023 21:42:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA50EC433D2
	for <ddprobe@lists.linux.dev>; Thu, 27 Apr 2023 21:42:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682631725;
	bh=AcDFW1Y27lFM1w8zrfBbazX3E6aviievNO1Rqhpe67c=;
	h=To:Subject:From:Date:From;
	b=bWu+HleSKjJdM6j8Sp2fqDJhqcdqYgWFcHQOgieD/I3GC+tyk9kcKpN3QXHKVoGaw
	 AS/u8t/Oxh/bdvWDGsk5L2+8tXgTKEeuaya0oY2617HRNDZBQqZnhhUH2HOXNbZU3f
	 zi9ZT4STjs7mwNnvAqpmBrIFOxlULGyzrC/k2Sb+P7+OyKxR8P9QH3lX+2zpxgQblI
	 ikHC5koQQmTBjv2i+gk30bpG4JyAwZqeUoLnd3xANPbcvVqRXJaoiX08CEkbN8PGr8
	 pKqtkw2v7PNlBefZIPk2T7/vECrner/L8C1HeIy6zJPJtEVuSm0AAMBiwSl87ARC94
	 IYm4ty9nU2+2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC510C77B61
	for <ddprobe@lists.linux.dev>; Thu, 27 Apr 2023 21:42:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168263172576.23197.3179326106088252155.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30d6205b23445658a16142ce51795f11b272c889fa1b36493c4382e3138478fa
Date: Thu, 27 Apr 2023 21:42:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682631725
