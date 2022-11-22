Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9C121863
	for <ddprobe@lists.linux.dev>; Tue, 22 Nov 2022 11:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7163CC433C1
	for <ddprobe@lists.linux.dev>; Tue, 22 Nov 2022 11:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669116054;
	bh=penXwK93/DgIrLedE6uIqfo5ze5AbaGjsdWrGjmJ/mM=;
	h=To:Subject:From:Date:From;
	b=MCBp2NJlSEhV50ukot9GoqCBvbDUit7nMHAfoNTjYr9Uj8UCt5l1jfxH0Y50Yf2aa
	 BgfdH5OrXyGRcJZ7zi8C6n7CeyLq3RCKYtq5yf+hmfSzAdEgt9Gq7dVA5aNqTdiRwx
	 wuxI+OK9CIpxcK8cNdGXhWLrz0npny07GJee97tfyW5KVjWgvtLr4uWB8DwOKcAOXA
	 OXU9CxRTDKP4LoEWna6aLRCopYScIiXWDhiKCIQWiYsCJaAgH+2ZCHkhHywMPXeWiY
	 QnZyxnNUYp3ob/nwsKpLXDPeoU/XTAnXjp1w8uXNRDtTQEIR5lmZqOuVl6n0YCyMk1
	 1auhPjKNdKEsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B165C433FE
	for <ddprobe@lists.linux.dev>; Tue, 22 Nov 2022 11:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166911605436.7926.9456956223636632182.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03aaa3f6678d200ff021bb60761ca8b5406f0ffbce5b019a52b0b7ec4fe75e09
Date: Tue, 22 Nov 2022 11:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669116054
