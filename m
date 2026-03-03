Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F225C3947A7
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 22:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772578494; cv=none; b=h+iheq4NS3PI0itocKZbW90SYIYdt/l+CXNQtbjW7Cvkoo6yB3NDZoo/E/FrtbtVazdZW2X0w+URa7aU0LdYUsSH7ZHk0kW2U5xk1qUDGGDGW1N/DmdbEOnhRbvPjvRObfY0wPN2HnqKWg5k5DMnx4LbUEV8qwo9DtgA2o3ULnU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772578494; c=relaxed/simple;
	bh=RKpXXeyNGSrG89cNtGA+SqD0NE7q8PBkHLogVWiRYLI=;
	h=To:Subject:From:Message-Id:Date; b=M7C53fZFBqBjmaf6xGEjWC3YFqJSw8m3kJSRTco5xZzN84hCn6MNoJrNYAVRQdZ5prz8zPbze39igVCry8Z53uxQzjox2mmW2SHdSVFSv+xGf1ybKFjXEDCu8NGTc1RPitid3o7oZ4SwzzN47ouP/0OF6RkQX+eYGC5aH+rsj04=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UzJeUiNr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UzJeUiNr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABE8CC116C6
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 22:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772578493;
	bh=RKpXXeyNGSrG89cNtGA+SqD0NE7q8PBkHLogVWiRYLI=;
	h=To:Subject:From:Date:From;
	b=UzJeUiNrCTKinnBreJz8hDfyh50x0pN4G8eeoanOZeHB/aGyk1M2qCvznClJJZpn4
	 LhP8CXWZv8wzDUzYY2VAYLnX/Xr5ZCEdUH8fFUFZCmaCeu6FLHu6q87Iu0dOWKHQdc
	 XaDA/z/0No1seGmZBGeYhkydmuyUscadhChm6KvmYWy6NxOlKd+q9zfsZKxC7BtGGA
	 tVIh+5FA/fES1RG+83t3XYCwgb/Nakccp6QYQyUN+qGs5fqw4z02B7KBDiO2tOlt9O
	 a9/hRI1EQZBoa47o+PGRyTD1U91AU4mpmZL0lGvvglV1Ozuo+F3lB4RBtld8g/Xhv6
	 0Dt8hNKsuuPfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0055EDEBF5
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 22:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177257849364.10556.6863071871848690558.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 448be6c405eb7b66ab1d81d949d48a4bc0336a83f5815fc8c7dfccc94e3e6496
Date: Tue, 03 Mar 2026 22:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772578493
