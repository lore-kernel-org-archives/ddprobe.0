Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B518B7C
	for <ddprobe@lists.linux.dev>; Sun, 18 Sep 2022 17:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 63F60C433D6
	for <ddprobe@lists.linux.dev>; Sun, 18 Sep 2022 17:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663522253;
	bh=RkkxFe2U8b0e6/uSlLp3JRXlHdowW4DM4vLiSJ8URng=;
	h=To:Subject:From:Date:From;
	b=vKgIUGnrEnWz+Mmbb4gBTXqgJhcp9T9xUccJymIbz7NzdSSiPvppUbAyQFRQPr4Hb
	 iuTjuVwEmCtb9qpqp8vwtMk8pUQXtnLJHxnDWhlq7bOblqHBAj5KPCrQ2iYZ0ZpE9f
	 KmfJGj1tWBLMIHYMl9fHNz1LvymfTpwchH2UYBzS/D08mdmQGYWhXkFrfGorPnWaIx
	 0GsvUr9C65FAfNMhj74jdGKo5sYrgc9L0JWiNfE5NWkw2e7XrELz6zL9SIkqod1Ops
	 h0rarH+Ysc6aCnONJNc+XUACLq8QJdPNxkZTSLjlcleGNiosKMyMGRqycJHA75PSht
	 WnuQzjUC0SgqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4EAFEC6FA86
	for <ddprobe@lists.linux.dev>; Sun, 18 Sep 2022 17:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166352225331.2091.2201669311686712885.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a454ac6288666ae95aa729da844a33f1116800b947b6df3769fc69e6ad41e105
Date: Sun, 18 Sep 2022 17:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663522253
