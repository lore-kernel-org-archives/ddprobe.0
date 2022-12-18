Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9872367
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 04:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82036C433EF
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 04:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671338487;
	bh=238tyCU371dY8pf0/PbzhWiC4RvtMLxAFnOf+PMWzqQ=;
	h=To:Subject:From:Date:From;
	b=k9YAn+4qxr3bO7dKw3aNxh86gGj2yZJ44igXtetpm9TyKhkVXyISaUJf1xU9F5Xug
	 vjNnhvGnMsuZzQnCSH3nyhZIjLXTeLXhDxHYKVwDtRELD46E9K00fEuode8VTHtAik
	 VOdo7kvRXIEh+T9PHGgezqO3wFs+Y5MQqSV5HQRfc8XgfI7fa0mHUcxPqMmVL2CL7y
	 nSJodgDnRzSuGkdCmbN3Gn9lREpn3eDWC1L012UY3WFu5HqB/ie48GLqmfotNBSPwH
	 q7N5QXp89an23SgBqwXRXbg0LzY/RN2dOhvDYrDfiaeiGtZj0mAbqM1o8q6QRMdbSo
	 +v8qfEDhdcu1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65934C4332F
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 04:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167133848738.18646.14595438887400990350.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f70ae5b3fe9e5829912403a319a3d502ff86ce72952cc01390463cf628dd677
Date: Sun, 18 Dec 2022 04:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671338487
