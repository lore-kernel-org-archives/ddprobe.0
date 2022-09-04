Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC2BA23A9
	for <ddprobe@lists.linux.dev>; Sun,  4 Sep 2022 06:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 703F6C433C1
	for <ddprobe@lists.linux.dev>; Sun,  4 Sep 2022 06:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662274253;
	bh=dSkoRj/LjFlk/7fBdM4TogSKw41CG9peLnzjY/X4vdU=;
	h=To:Subject:From:Date:From;
	b=nbNpSbWAo+OsnANXSyTAEO46xEg+QSEOL/d1dy5Xy9P+nX8s7fpH9VI0MQdOXBfps
	 vrHlYTQ0S9TOdd+ZA2HwpBE5AzoVa4U9GT/ZtXwFN3tdX+Bc3ieYAj8MhmgnhHEybe
	 hsBjGWnV1YBB+AxjNfT2iGU5PG4mLzvox3xKXT5xQabfg9pPX4IaQi3fjiVqGm1S+V
	 rCVFYclVXxN1+KACCG/rCVmd3AkPMAPXGdG6ZvddzKUhKlLkxybvoGNB5GOiM9ynAf
	 XcmmH/7oWgzmZI2PQQSW14g+ur8xrfFp6sYr7CPX9duY5RODUDJN51mF/uwEnZ+xjM
	 8+bedU98EYK6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57D23C6FA82
	for <ddprobe@lists.linux.dev>; Sun,  4 Sep 2022 06:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166227425333.19165.7645553914628160522.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e43ba655bdc6cb8e17a950366ac776abe9ae9e6e1940f55b550538768f588da
Date: Sun, 04 Sep 2022 06:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662274253
