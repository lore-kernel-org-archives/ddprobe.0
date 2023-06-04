Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B5292F3E
	for <ddprobe@lists.linux.dev>; Sun,  4 Jun 2023 09:09:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F3FB7C433D2
	for <ddprobe@lists.linux.dev>; Sun,  4 Jun 2023 09:09:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685869746;
	bh=OV1hnIzybCzuabgpCQDoowX960GqI8n/sHnQnRu/bVU=;
	h=To:Subject:From:Date:From;
	b=DVzfwBpEP+RZniunA3ZhFTznIrepV8SbmWDgv1QtPyk3IO/Vjm7z7hN4lT8HUavJ2
	 DXnVGXtkoYVyjQqttLNCAo/ipZH5KGEv1lTDu3vTmZWcFQjUaTNS1Bi5xI53j8HecI
	 0gxGmWz3Is7PXAfalLPFVuPSJm9iWcTIApavVg3Ts4acrECr5+WjE5aeEourP7hB0+
	 CVJ501V5oP7Xhbc7KJDXU64O/WTZwyfensXBGmgWFpVnKi9NbMcV7orVLJQ6Z6b0AG
	 GEOhm5DhrRtQMOcYbYt7uMbfCNwAPHdTUL+vljQtYOnRAJrpzQgdVl1lYJ1gVeTjDC
	 +tknhKP5UeVGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D35AFC77B73
	for <ddprobe@lists.linux.dev>; Sun,  4 Jun 2023 09:09:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168586974581.28295.14969718989200316410.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5383abbd937fdf48ef7af5a2493a5f30a7c212c44d5009bf5f06f3e4f122f958
Date: Sun, 04 Jun 2023 09:09:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685869745
