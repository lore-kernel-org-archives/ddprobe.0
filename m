Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6086BAD29
	for <ddprobe@lists.linux.dev>; Thu,  6 Apr 2023 18:28:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 11745C433EF
	for <ddprobe@lists.linux.dev>; Thu,  6 Apr 2023 18:28:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680805686;
	bh=4ZxsOikVbG1A5gUmw0y7PRyD/zAAou5nvmD2lIFcK/k=;
	h=To:Subject:From:Date:From;
	b=r0TiEDI2c+At5jAOUYMVKVom1V2+pWWit0KLz++06SR8w6VMTZIZy6HO1WkyMeFsD
	 HJf00Ya4fm19Elh8DBEslQVpVEdhWLX1cDtzqakd0I0+Ptyxe/r19GhpX2ePEugex3
	 RCh9LUdaX68wJ/hTKMYT1gk5WMpeGVXJXrsi9dC4hiQe7IRZbloW0Wvxwknoow/hqF
	 H77z60ulRilUOBucr3M70Tho2Owka4IRKvbYfTeg0vaMTMMuNlmooLXV+6wH9xcI9a
	 kkEiHTwX4VH/kIvfLw2+9dws+VnuWKVG38xmxR1d0UwGNe2weX6IBl+gSlkHa8imXh
	 ztT1AUdVUZblA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EAC5AC7618D
	for <ddprobe@lists.linux.dev>; Thu,  6 Apr 2023 18:28:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168080568595.18803.8984939272291401058.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8ceb2e8509c838f2ee7d765735335265d924cbc90e536117674f12ff9c25003
Date: Thu, 06 Apr 2023 18:28:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680805685
