Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48B7E110B
	for <ddprobe@lists.linux.dev>; Thu,  2 Mar 2023 15:16:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE791C433EF
	for <ddprobe@lists.linux.dev>; Thu,  2 Mar 2023 15:16:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677770165;
	bh=cv/4jaM0b+s6LtTbb+P/EaMgRP1QL17Hb5PG20N3eeo=;
	h=To:Subject:From:Date:From;
	b=FReyjZBg1MjEEUXqRIzQi41uPBi9aZnHPs7PTUCKlwIcU/haBxNoZfLqcZsa3i5Xa
	 31cjzmR2+PvKfoiPBT8qVcnUaNSTBgITJSWo3PvdPDO36fVOtpDTEBm8Ey+t0z20yc
	 UuQz4sNu/3Yn4UFcYmIl/59W6tTW5jHMCkpcgFvlFEhoTNxPFsGmdIxCfoja9pKvoi
	 2BubkVIvaGIqHhgQlwtA6OwgSYMkY68iWzSGsJtUFx9sYH0O03CBF/WCQwdeaJezFX
	 b3G7PA/qpGOZr6698db4UV+lVuZvvVTrjLrt3FaZkKNWVvK75LDw8+hLwWhyGwqnES
	 KZpfdR2ZYBvLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C078CC6FA8E
	for <ddprobe@lists.linux.dev>; Thu,  2 Mar 2023 15:16:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167777016577.4330.976199172478521490.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d83e070e3ffa8cbb25b7de16bb887ab25907de2dbcdf71ea979abb04fcb1c006
Date: Thu, 02 Mar 2023 15:16:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677770165
