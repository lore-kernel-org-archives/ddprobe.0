Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37C611DAC95
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746921594; cv=none; b=qCUTUHmB51+sR6iVNmBeuBsPp6VQhnkV+U4UxzRtngd1opMSCEh4iln6O7utNR5YR+j8Rl07JYNNNa5d3R5y8usFXRaIzavvZVI47DfX7vOgldgmjYq5UHEiki4y0Tswc4ITDVaASlgLl3+1U+ON8FbtC0+PX20+I9GdwdQ3FGw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746921594; c=relaxed/simple;
	bh=Z4nfMtGehW8OjX1lK4NiPVp7X9C7oPmaqw2KiEnQAnQ=;
	h=To:Subject:From:Message-Id:Date; b=ovkMLSia25sNeQjUFJosiH62mJm6HyfGFBC/vDCmBztIgezoq4uGrdctQgXqMh2biDOPvXp3Aa50Qkt+Nm3i1spjV9n9KSrZtllCqSgfDGVKB5tre7FmsyM8M3lYvn6v7qAZ02dSbvm6fDQhhn41L96IQTcUSqLSjNJEtsq3zUI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NGhklRk1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NGhklRk1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9B22C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746921593;
	bh=Z4nfMtGehW8OjX1lK4NiPVp7X9C7oPmaqw2KiEnQAnQ=;
	h=To:Subject:From:Date:From;
	b=NGhklRk16mN83MXrJPUIKRcgWFS3mO3m/w5yz9JHWUOTZP5uy+owadAQJZAj4IZ2C
	 Es+IidHXd2iD5vHMcCoav5EOZAlTX9ot+XPYkiGKVoOgYHM/+9CIsikfNes0/vTPkr
	 nnZdL+q2VBYR6+qX52/p4oWb3ZZF1AxTWzghRtw2hU5F4LY9Ycv1zBF/WBeHBSZIzI
	 22C/0AlDXVAxRBLOMzlIW7bhd4Qxy0SVBzXWyhOjbzFLtkV49wnYrQq0UdBcthmDIg
	 8nKIXEtU2g5ahZIw6Hj6JDp6cvtRpiDsKdgzc8Dpqek/gyG0rjFDPlNdU31vrK+hDx
	 1c3Jdq5zxUyTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 940A7C3ABC3
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174692159357.1936.17269491576469235824.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5cc84e95a4f7ed6dc23e3e11a8443813e334028b9244e3bca9b24d763d7a2a7c
Date: Sat, 10 May 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746921593
