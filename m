Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C99BA2CAB
	for <ddprobe@lists.linux.dev>; Wed, 18 Jan 2023 12:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C3C1C433F2
	for <ddprobe@lists.linux.dev>; Wed, 18 Jan 2023 12:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674043887;
	bh=zycutyhhaNweE+7s77A3UJZS4ctb2sMO4u1scXyCgZ4=;
	h=To:Subject:From:Date:From;
	b=iZj3KbvbkIiq+PjkWW/7mlSB8SWOeAAdCl8suhiGIq85FT4tX+vZ5+ibhNDVKyy5p
	 /sHjIEPDGahZH7b1tzQdl7VDmLIrz5vxSRFBWArwZqYO5k0kk1SA94yFSTdGJtqylI
	 7P9zrjyQ3bkWBkuVyoTYubiiAnnF0zq0wrd5ukzSBkn/yDJWfRLkfYd5NcBmmTuV7d
	 O3X2j0o7q4djwprOyZkqWKi+HA/eTHyS8yCO1bTMiMtDO5b3EIzI1syDcUOVwzgzbX
	 /Qcmd+RgWwgiNzMXDqSPZmmLHjJkb5BpalWlM5Y6COB5ZcDEITOU7vyQRQL9nfbWTX
	 X/T8jz95CnIpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62D45C32793
	for <ddprobe@lists.linux.dev>; Wed, 18 Jan 2023 12:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167404388739.6677.11310955780226145280.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56c8803b8dd2921d42215c5874ef8cc20c6f50dcae7031caec36bb8b7045cda8
Date: Wed, 18 Jan 2023 12:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674043887
