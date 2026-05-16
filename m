Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2850C3D47B7
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 11:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778931634; cv=none; b=d0Qpwzhgrr2W0lS5bdctcwztYT0xQ5FGxfTSHl8JiTeqYT7jXlXXwHf7XOP3UM42ptwTDH9vosyYKaf6qNjWdQVmrhgRBlXSwNQtRgU2NQKF8VVhs5fxw+IujAkVA1JzKVG5qWGt77aJD5IyXelF0fztR6+4fuQJVkIeMfIuTQA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778931634; c=relaxed/simple;
	bh=4MO4ZEP/EL7RFvTts/x+vpEaXr1dbWndUCH51mCqR3s=;
	h=To:Subject:From:Message-Id:Date; b=GEDa3f2tv5LJSA0WaJ1sOayWarDuMoDFIOz4QIhtZZpugjrJ0IiB9rBY8jzHMAqvrtYD9gNdZeb6N+oEqiSyv/bfCjjE9ukJrpiuAdpkDCSdRwtsgKWuyRPJ0cJCRDd3RQbW4K5v64baCpMs6O6ea+qMUV7jJkf5gKiLsRDjB18=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VN77mPuh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VN77mPuh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0BBAC19425
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 11:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778931633;
	bh=4MO4ZEP/EL7RFvTts/x+vpEaXr1dbWndUCH51mCqR3s=;
	h=To:Subject:From:Date:From;
	b=VN77mPuh9rBeJvGOK9LCv4yWm2n5eYbM/goxCEG7SF9IpWiPJjGm+JoBUZaC1ne3D
	 QqxfkPTKVtEWCJQsiH0GJrjHb0gh5e86LooBbN9qFKf0tcMfKRbIyaoBK9VtNhlixJ
	 kpTZieI8Gbq8f4Licw5o+flJm5tsBc271PRaww+cC2OdCzOvS1XPxRkAd062eFkxjO
	 +tR84NjRxPLnv/ig3tpmyykf0z9bTp2M4rqmGLQowEqtjgfK99/wUBl+94PzNHPnkL
	 M3gUWsbTEQlc0Cio9cXnwYjE4cMBkCUQet1kl9jMVefU4M/xDNd6Bdx9eZR1vmPD2/
	 FAo2E9wWOlsxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0E1CCD4F21
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 11:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177893163371.2562.8768729900391437683.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc89cbb1de9a3b5831d3de4b90a5d6094785b3c41bb879bfe2ed8187c3342743
Date: Sat, 16 May 2026 11:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778931633
