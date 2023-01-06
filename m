Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D97B27B
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 08:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F1B8C433D2
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 08:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672992087;
	bh=2Q6VsfQ4SuPIFdDH8q8MFR5QxnZNs8MSctsGkn3J3uc=;
	h=To:Subject:From:Date:From;
	b=NjpsdotnUvwxFyRK1M1aIPeOkkIELY8SCFqxE6y0iDNK1Bl0VjeFSao0eLHPknrWj
	 gcY7lU6i4K/wFcFEqScUKH3E5tkje0QZzpwBIhkI+T08tSKOEXZCvCTwtB2sLmzhuy
	 S8GtISDrvSOphmi2JadsorhjGHUolFDizSUcyiCD2hIW+ZAoc4UgJ9MLiQJx0Q6X0+
	 iB1tC1uqXae23EsojI7fut163kTW8Khi9pmiS94k30v8MPb2OZaMEcoT0Msdt0gcn2
	 9RgrWO8NYwUJEa9Bq7wkmfE+JO3OsrXkCeb2NPHmyIBNTNTlY87+PHBM85z7W0cpu0
	 QulIU5e4jdiPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61FF3C3DA7A
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 08:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167299208739.21608.5154710637193538879.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2d33455c5e8229271852238b64b9cdc7866f3185ca82f27f15137930a2736f3
Date: Fri, 06 Jan 2023 08:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672992087
