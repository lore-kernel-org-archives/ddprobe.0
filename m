Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A37A2163BC
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 11:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736422554; cv=none; b=CcUoSIRxkY8jNAI+ezAw0gGuI/8ga4Cwxei6o+7TdZnzDA9EqrrMbj9b0BUfa0KF44kkjC9j8Y4BvfT33RwI5IAM+V5YyaqHHjXndKDqt/Cbs+E51fH0FjxrDF+zfM6Edjnr1ZxlTqCxmZ6kIZs+Qecy9YO5CUPLHcB/+wiEOkc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736422554; c=relaxed/simple;
	bh=s+y68XP+Y8i8fVLRHEewgS4PE5CeEWY1MYAnNdNzc90=;
	h=To:Subject:From:Message-Id:Date; b=U/4/KGKrzD4filqxeNy3mL5NACWm7bP2gw94Djnq09pAxzFQZXW0VMxS23ei45v/KunXjoU3QKiEmR7DDyP2Qix1RBJWc1Ea+ybASXqA24n94OHUsw13JK/epU/tbhOlcNU4BWzCmsFlGE+KMYh/lIkwX4BsS0UcB4P6NnWpFEc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JmPbIY8K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JmPbIY8K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0092C4CED6
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 11:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736422553;
	bh=s+y68XP+Y8i8fVLRHEewgS4PE5CeEWY1MYAnNdNzc90=;
	h=To:Subject:From:Date:From;
	b=JmPbIY8KFYObQFyrPfNRPqdVCQcumOpEm8An1hXhXkE13v7wtqLEaVKq4UCDzFHYl
	 MRrZJWNM79IWoWo55a4HcORnnh99hTzPXKYH1bK9xdAlWlK71nNtKWa2E9r4s0cNyT
	 1B5pXDCzZbIGpnQ9e+CgCd5t3xGP/OHyCCztvgdhjaSPqr+vKA0MkvKZnquSX8re1M
	 CCsnF0reYUW1/EtjtqRsNagdpe6GyqOMoAoLT1atJUlDZa7sgwwSbgxF0jsB6U8vnD
	 mrhW4KeAd+cUO03xcUXPEs5kuy42ZG7QVGgVlX006i/ee+UZTSwK/RJFbK418SWdOL
	 LvL2G7mnxT2+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F28FE77197
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 11:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173642255357.12629.721745726108348983.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1de390c898fdb4f36be78488a7fc4a5d5474637923248db732bc61dd1db330f2
Date: Thu, 09 Jan 2025 11:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736422553
