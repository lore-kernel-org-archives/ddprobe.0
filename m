Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6831FA2D
	for <ddprobe@lists.linux.dev>; Mon, 16 Oct 2023 01:17:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R57pUMVt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAC92C433C7
	for <ddprobe@lists.linux.dev>; Mon, 16 Oct 2023 01:17:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697419028;
	bh=QeAwumNe4Ta1V18swjurgGqByAlpcy5904f5e0uPd3Y=;
	h=To:Subject:From:Date:From;
	b=R57pUMVtuVx5xAaWKZnYWKryDh524/SM72krFCU8n3Qe1xyFzWfRuoFEpHIBzpMJN
	 2T3ZergkSyeUoLTVZjQzOMltSP28w4f2uWKPWgXq26gXa3Ty1TYeuefgKs83eAjmY1
	 aLk2JK8L3vszs7ck1KG7izgAmBGo4JmJcjMSbopLjr0JCI+hLHEly1S4WKf+L5Ot+k
	 hi0vG9iV3qcSOM645fr+780gQBDZwIyZkeRvX5NgCtNQEQHAMpe1guX6WLzZLV+Ano
	 V/m9dfjxgNWV81xNJa0WGPBsZ2HCXK9fdSyrkWKhpC9ZXOdxFlMHGOVev4h3IRs04N
	 ogt8z4ooWSa1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB54ECDB47E
	for <ddprobe@lists.linux.dev>; Mon, 16 Oct 2023 01:17:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169741902869.26437.17961487736420931171.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7dbbe586104fbfe8c65ddb4c521247f2178aa237c9747cf68091f98cd7407f13
Date: Mon, 16 Oct 2023 01:17:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697419028
