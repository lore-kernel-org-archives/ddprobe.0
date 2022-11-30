Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDBC86FA1
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 18:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7AACDC433C1
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 18:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669831854;
	bh=QOchRf9hqVmAUbJwNHvMdnL/l/1njPom0KrTghmS3kc=;
	h=To:Subject:From:Date:From;
	b=kavvVSG3VplXQxK5Vi8AuLcI1Gp2q7js62UYtAFBx5xnvtjc9HRXnWA4we+iVTHlc
	 O+6veqTc27RHFu2rXtnDu+eXQsUpzKNc1jcwo8HphtcX2NN+wqE3PZoZxmvEIX//1R
	 40YiC3q/oxMIE0YE8OuR9mEevW9OiSP2rbDNv61Fv/CGzOKfMKWcqBpJTvxjwiSra6
	 3a0HBb68HYOnIJxiJA3hNsJHbevF/dCfP+dXH80AVIpqgtp8TppPVGSf05xfW0fWGB
	 zuQjzXQU0giAn/4F/7YJ/2Fn+x1lR2vrzJW68B/XsB0ziq91mE3/eP02c0ru+75fYM
	 N3QWgt4Fk18LA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57162C4321E
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 18:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166983185434.10026.9989574980489060645.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 841bef44eab33f92f42642c23dc3415c61adc72eed25731444639420a5b4fd28
Date: Wed, 30 Nov 2022 18:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669831854
