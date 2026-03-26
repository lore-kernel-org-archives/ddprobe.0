Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EE1E1A9FB7
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 03:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774495494; cv=none; b=VqRRBCtOnDJyUVZTbRCde5kJcYksiK2/wIdCD/CIotdMZcluIpVUOixgK5Q9LRdaznoNVp/12Q+4Fr6Su3zg7t3wOOUoXcrkeMfGoa9CljQH5FKuh8sHrkEA8g4dEzrSQ2jCJcWj52GewQxMhH4l3/MeWf96iiviN/JNuVA/+ZY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774495494; c=relaxed/simple;
	bh=5Vcw3DE10agak7xpdsRDPe2dRb+rZT6SlD0R0QeJtak=;
	h=To:Subject:From:Message-Id:Date; b=ozy5ig3sB1NXurMJB2ADeVhQKTw9L0IezZUeB2GlOPPxHmjI2yqHEfiWsLlEkeF+VRkKLa6C6nFX8TcsTj92nfj6TedjaE9WcbCUpoGvgxggjzOzDHCFL+gGP4yJVdTIkQImiZMkGJMI/FY6gqyNDRzUlmSgg3B30nGmhIJeN2Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L/iJkEMj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L/iJkEMj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2C6EC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 03:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774495493;
	bh=5Vcw3DE10agak7xpdsRDPe2dRb+rZT6SlD0R0QeJtak=;
	h=To:Subject:From:Date:From;
	b=L/iJkEMje8Njqd0OA0QDG74X/pgWWWwQJBeSoYQmXcLLYeRxnqxNK0gLneLKUcAgz
	 OTTShINxYPmgFJQM+/66ggufNTWFSPzZCICWo/D4BDb9iSzsUXrrXOQdwDX2LUs2bo
	 bwjXoDHc2P+wCYGWYW5Yzp9tLE8LUdoxYiA13O4mZoYEfFH54neIOReH70hAuakTBY
	 +mgzBOovw5ksf7D/i+gxkWy6YMaTJ9rpg+8VHJRT70KyjUJ87NnVZ9nxd4p0hLqg8u
	 8AdtNJzQvQpfW21jidOzK7dBqhWMj87zzRhpLqiADQYSzwKgn0/7Qrji8wu09zueAo
	 jj6tc9r8v4ywQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9034D109E543
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 03:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177449549358.4411.9892809450598448450.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80d0f2ab514bed3aaa535a9bd042cca735173a39857f22fa7f09a89e0a05c663
Date: Thu, 26 Mar 2026 03:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774495493
