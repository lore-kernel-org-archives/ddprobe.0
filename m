Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 470E17E2
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 01:23:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA936C433C8
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 01:23:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687915388;
	bh=ZzOOXGBYeRHHZtzIArHIy0tOhijNB7ofiz4sM7GD4f0=;
	h=To:Subject:From:Date:From;
	b=hfiL/tbtPGh4B405rVEDWeGv8XxacyZamWa3XiecVqL7dY/Ck9lTve5yZmE6BkDoz
	 kc/BeBsbXX7XnyrzZ4oH0DfKZN/9LgfcTRa0rrNzOHJKhKX6byOvnEH3IDS7b4G/lm
	 wHhPOLeD8Rj+HdJivLbcKgtbdYv+3ce0ZjATWR9N8ZCtxyTLV2OV2l7eRocOz9OlPQ
	 52MGucdtlpWgrgqsVtj1XpEHfwrVrQyakIxGvj0f/1Rm7AV6G67EDjUnRfW8cNV5tF
	 4GMaB6eJ7LownM9Mh5pLrWKaKw2eBVRbeb5o9+M13F/Dy4ODNDgpdHalJfc3eKoXQt
	 8jtjXMIWRyn7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAA39EB64D9
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 01:23:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168791538869.29949.7718192585375191969.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 172270f11d9862dbe3ad9be162daac946e8439fe56cf1f0e757a81986c33a27a
Date: Wed, 28 Jun 2023 01:23:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687915388
