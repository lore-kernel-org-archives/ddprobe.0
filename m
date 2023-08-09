Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CFD4181
	for <ddprobe@lists.linux.dev>; Wed,  9 Aug 2023 03:13:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0985C433C7
	for <ddprobe@lists.linux.dev>; Wed,  9 Aug 2023 03:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691550788;
	bh=P1JFnCAUjxSCyDnY0YL+zUmPmwL4ITCaP4hiGbovSZI=;
	h=To:Subject:From:Date:From;
	b=mLzJQLhVXAg/yf4qAYZacGff3gaHRHhRijcr29OR0c1yetyjt5nt3BqdwEDw/hSuM
	 35jZm0nZdMaDY9eMwAlkiSpAcCBJHlJxy9wpido02I92WaDEQNv7npHRT53TD+eLsX
	 7jC2BVmTSDXHEbVvPoV660MYnFqI+SfY6G4OUAwvKC1Kjk2JrOLayIn6Zk3eXDwSyZ
	 pwFTTYDEw1R6XroooUGSM8h0teQZ7AFWxk9yt+/nYavQaVlkkH5eMFXWih5yDt5XLK
	 gAclBI+WoPG4Fmkinpr15bmUT9GncteT15Q7gu41imaQS3LqBhoWOnZxSiDNKbK/Do
	 dEW9P3d8a0PXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A312EC001DE
	for <ddprobe@lists.linux.dev>; Wed,  9 Aug 2023 03:13:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169155078866.17165.8525612494498777992.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c36e9bb76a771b136c8105dcfd233c9b333a89d9a0beb44fd7890ee5c4d079bc
Date: Wed, 09 Aug 2023 03:13:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691550788
