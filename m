Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA5427E
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 02:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8D239C433EF
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 02:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672713087;
	bh=xRtqJ5ahRMqSDXrf8axVRzuiEjvS5QEsiHWvrMjmDb4=;
	h=To:Subject:From:Date:From;
	b=fz18CMuAyaFNS5IUG4JW/mVz2UYA3tSGv/SNZGnprCy38lb7sqfRUvIAfzMxwgV2z
	 /ExMUFTIW/j2c1yw5Xt+vtwIBOvKhkyzyR+z9WrwddnowxbO8VMMVlqfHAV3r94z3+
	 AjgiEb9MC4EuweUuJXV6cxoYNjFoS7rHEflnZpaz5Fb5GN9Vc7o6SgwI8J7EFxkQgD
	 MfZnHGu8Nwy3X2dXLjlm+K/Z4RjO3I7K0mdNJG8oPnDxMVhXP4tV5LdL2Wadntc9mT
	 mLkww6xhib+CZYrrvyancaA/yZ3GatTrZL9a+ILL9ZdJHjSSVUHPKn8ZQ5ATWkqNwJ
	 uIEf0x0/JqFEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 716C7C3DA7A
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 02:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167271308745.10102.5460611849675023332.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16e2abe579244d50259feb982c1f85c72a87490b9099fe7120018bfd0c82c631
Date: Tue, 03 Jan 2023 02:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672713087
