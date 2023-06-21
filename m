Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DB30C8CC
	for <ddprobe@lists.linux.dev>; Wed, 21 Jun 2023 12:33:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6905C433C8
	for <ddprobe@lists.linux.dev>; Wed, 21 Jun 2023 12:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687350788;
	bh=eShMTjYHaWzcMvhL81zmFOmgFigymTy8+6nFK2HLDP8=;
	h=To:Subject:From:Date:From;
	b=UUE9xy8h7fJRiKv30CiWlcqZYCqdCyU/MNYSQkuIBFAOs+AukT1RUBKjzVaDMAM+Y
	 IOFRPZiy7dm4OmUAt1LCqIN9laV7ItwBK7ExQz+K9kpitzfeG2SRhG2KddxvJEPpAP
	 0vXHtq2+Qn8TimjE2V56RKhW5zSpraFB/iv1ZK7FQ2/bOOHtS4iOu/L1NW3DSxPdz+
	 DEcgHRJ3KDJj0gzLNaxeo9x2pyQfGyiV8tz9b0C4pL06dg8U8g+zdUjswpe4KZyMWG
	 ErPXw04jNDqi0q8LMSzkCR2XMemakpzcETbPstfZu3AcJERhYKHBUVqLIbWBY0CObS
	 F/4nz1/8v5epQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B13D3EB64D7
	for <ddprobe@lists.linux.dev>; Wed, 21 Jun 2023 12:33:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168735078871.16051.7827422932693466483.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5b037d243ff72d919bc2685fdfeaf08a1225c19f0543381eb1626c2b742c81b
Date: Wed, 21 Jun 2023 12:33:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687350788
