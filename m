Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDB6127707
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 08:52:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764924774; cv=none; b=fBDiWFGpCqgpLihbSPH+CWlkU9EX5GTN9+6L7W5Ij/+Fp7r4NFe0pcKXfKxhNHQ8LTF3rqqu9Lb6Wihoy1bmmTydmidUNypdH8KnUE1ubQlOUVLUX41JiGEZGW8MqOhtN/TMi4XZFME6kVEiYZ1bIrQsvR9GKL5EDWqIu9edAb4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764924774; c=relaxed/simple;
	bh=yPjqn5c9RsObfJM5iLYDimr8c9QcHzrCsr2K6vwfJdQ=;
	h=To:Subject:From:Message-Id:Date; b=HtlxFcZ9RdjCUIUIUwY9j0SsbY2xLicOmA+6/rB6YIv8fgJdzfPDTsCxlE+3oUE3sT2uExlpaKf1TovIzdaUt6Of/uvcxaVNhLi26C7vbl5wATkXgxLPcAIhJQoOowNynZLRoG88OgJ2P+FTF2yK+pu9+6/U4T3uq9L0A7Z94jU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eSaTcioO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eSaTcioO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC094C4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 08:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764924773;
	bh=yPjqn5c9RsObfJM5iLYDimr8c9QcHzrCsr2K6vwfJdQ=;
	h=To:Subject:From:Date:From;
	b=eSaTcioOkulb74N1DSE9ryT5U8Rg6s6M9DjcXoLsmgr/DLQZtyHIPuOx3BBXgDgM6
	 0BDdsFyiGhuZKTFZTuHVAmUABDZOs3DN8y8f6r0dqa+pKoYdBgfOjJPbFfpbs6/a1V
	 mIfQAOLrFJDo1oHa9zD2fUB0hRyvewxRZ82uVdDujgDoeFyztiIp24FZcbl3dLdo6J
	 34RnteLoc+4BKj2EVplKVJoGQS70SyWPkBtXvVHXvyoS0efI6OqGUQqlNuIpZsV7Pq
	 JhaEqoYtDgc5GOjsVVz9xABn2ITukyvzwUDk84Ye3QRwK4oooHRQu7bjl2OEUAq/jb
	 vwBNFQ0KIxDEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95641D2F7C2
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 08:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176492477359.21254.276220732593371203.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43f0e36cfd80c1b7d6735cb6128f12ac556c55136e81db309ad844d1546ac25e
Date: Fri, 05 Dec 2025 08:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764924773
