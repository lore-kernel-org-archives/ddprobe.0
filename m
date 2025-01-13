Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33576233141
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 08:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736756754; cv=none; b=V2vUVyapzFxS0yTr10zsFfbJL7fPo3VhvuTxzXdsDQb68AK2PINQjeEEqrJbiAnxId+TMahEpE9fSKd2y9zAbxHioJ1VcyWU+yA09gP2bAA4+2o3QUGP/S2e3RPUHOAauXcMfHomrPiSRqmwxH7lg10KwSiZaYSH8gj30VVoOaU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736756754; c=relaxed/simple;
	bh=shrFTPuToP49IkKX+Pl7HXrjYNl3sPFx3NTTxRQ0DDA=;
	h=To:Subject:From:Message-Id:Date; b=S/+ZboRaWpUxzWKN7H4euRch5NJ4AqSms3+DxdS4jub1RbvBOQi9xcgLBzz8Z+xWyHglKJm+lYuZBS2t6JssLmn8DBiASVYT6mBhqxJNmzu96FBjnP4TXD0GWhX4E7PUKKIDWP3fvQ4Om4JUY9PlRCj6sedsOUvATfA0r4hs6S8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y6rYK0zg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y6rYK0zg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9CD7C4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 08:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736756753;
	bh=shrFTPuToP49IkKX+Pl7HXrjYNl3sPFx3NTTxRQ0DDA=;
	h=To:Subject:From:Date:From;
	b=Y6rYK0zgUPjjb23koJ3TcrcDMHOUNHfVK0WQvATjluXmJ9GqHp7ba67LDacRjEWzB
	 owFO8D8TIlNhsGdtvxIKnU8UoKHu27lHYvARlc6PrFbOgvFQmNlFUrwuV2Kw8oDUmc
	 C91KRCjhygPo0TY0z8byMij854ti9s3MrooMMumO/FINrKtoLmVhcYwoMZLac2b/sj
	 vCEKHG4XlMBxUEGW29+qACrJMnLVXrISvZwgEEYaMJoxTyJT0+/Z1tfH1FpdpT/5Yc
	 rZbGa5jZGS+1voitdBKTX6crTSM+LM9waELfO1k/KSSlzpQl1CCYh78Uq6gAOJZ/FN
	 PtqvW5vJQhLvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93D33E7719E
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 08:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173675675359.22939.9024415921666048290.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36b1430cc5c3266577394623bbfe7b066c390d72ab920ea4d69d555aa8c18d96
Date: Mon, 13 Jan 2025 08:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736756753
