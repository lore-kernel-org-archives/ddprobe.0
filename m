Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 255277460
	for <ddprobe@lists.linux.dev>; Wed, 15 Mar 2023 21:40:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA148C433D2
	for <ddprobe@lists.linux.dev>; Wed, 15 Mar 2023 21:40:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678916405;
	bh=8qRFp8B8QzjAXSrJAi4NZEh2cyeO8RQg6RJmmcLjZrA=;
	h=To:Subject:From:Date:From;
	b=a06tPWz8OGxdid4EwlYGmRfFO6E/RSf19w2sfL2JHlcFUazUb0TyVzI1Ry6ajtLBM
	 qb7pKGiAILjMrs0xNbxWpx5MoB11Gz89vJ6e2MltJ4NRsDNNu+2WHpOTItUu+MRNvu
	 HbCuRmfDKraXwMsjDHkbZe9m+3UF/P9SS+88tY98SaGEzB77WLTuxf49PROf0Ptf2l
	 05kgHMTfWweZwVASk7ty8IyswPANzM59wkTrikNEK5MWFI6qvl3CCWLco4mN9HCgBr
	 WG+6XjZOXDb/N7NV+ov10lOIIJvg7LVtp27VUvIdKxwhqAaIUPkspWs0XHtiNT0ut9
	 KRQ6AlipnyMBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C09DFC61DA4
	for <ddprobe@lists.linux.dev>; Wed, 15 Mar 2023 21:40:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167891640577.14155.7864902709133283339.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5c098247b980c2fb41e08a2939170633d5bedea1633c367cbed49ae30c0d939
Date: Wed, 15 Mar 2023 21:40:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678916405
