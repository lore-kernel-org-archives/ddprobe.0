Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 401E028DD6
	for <ddprobe@lists.linux.dev>; Mon, 18 Sep 2023 22:55:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C62C5C433C7
	for <ddprobe@lists.linux.dev>; Mon, 18 Sep 2023 22:55:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695077708;
	bh=8sGK6IwhXf1iv9WRxe1kVDC7+/PwBU1qXu7Oq6aVWhM=;
	h=To:Subject:From:Date:From;
	b=qG50diZhnMRoi3KmqoZY8mQzhIvjzlxHjWuUwDWsmKTob+JFyeE1CkHSQ9w5udjQV
	 zxi2O1Va+Z3/oxobDQrlcyGYpsFOgM1dvBCGNIH3+DylWTB4zMlsXUtHhr1Id9sirW
	 3cVhKx1hLjyyHsgW2+x2j3gz+PInntrg1rELfUutmoHKR7yUqoeNKjSq8H6pDB/1Nj
	 AMccIbe4eNnhVSMF8sWt37RKY7qSMfmVZGUJZ4oqi0Tg4HiBTQki1/YIObW333eQDZ
	 z8DoEXbhoe3Wf0ZObV7tyAQ/kU2CTSaFrqZclUucg59vNcYhjIPabF4lH0vkqQB/Lf
	 TvKXvGZ7lZGxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA640CD13DE
	for <ddprobe@lists.linux.dev>; Mon, 18 Sep 2023 22:55:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169507770868.16770.12838864922834744014.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da06a9ecddf0b31d72d7c2e2a6a8378da19c4b0ecd326226d3b4cb90cadcae65
Date: Mon, 18 Sep 2023 22:55:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695077708
