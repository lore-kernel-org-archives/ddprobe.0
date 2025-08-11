Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DD94F9C1
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754914795; cv=none; b=f5MELodWFoUAOb+S5ZzXJK/FdX1XwR37gADCKVF+KG/iwzXEmoNFQWy7/81m0gDMCRrNSCmFaKKLAkTuMPqy5FL14vl7euqPpNIG8X66WnOub7mlS+VQ/nlJFb3UgDmHrLesmlV3H8nxiDuwIV3yKUqKCu+G0eDDgVeJoEgpUAo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754914795; c=relaxed/simple;
	bh=d4ZZHh+jWj/cr58Oc/r6zEdXmexMEgxeFjNhUdhMSXo=;
	h=To:Subject:From:Message-Id:Date; b=EczgX3gJv7a4HTfdKHmwbFUKvfd+4rVrc7PlvTkZw//sPgmIMUdrL8gwvT4zcNwCf524dnzMTquYhxt3E/ncJ46oM9fQyBb5buqC+2S5urhCNIqFwg030KCsISUep2z/5TG65skibNdqNY7G9hRq+6fby6v5BXHyrTgLvXn1sGI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ji5w/SvL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ji5w/SvL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DFFCC4CEED
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754914793;
	bh=d4ZZHh+jWj/cr58Oc/r6zEdXmexMEgxeFjNhUdhMSXo=;
	h=To:Subject:From:Date:From;
	b=Ji5w/SvLkhkuIPgQ5sbCeC7vkLgxt6ZLHr0l/vHD0fmgC/oWXWLWxhHdEi0WudlJO
	 XNzciEzwldrA1PYrFG/W+8TZkd8a3h5R+X1+3oYqv88yOwFi7cuHBbEjCx12lSXRNo
	 wb/zeoSrlxRdZiWoWKozAltUfGEWANw6ID4aRQ5/4ISB3CMscs8WCs6O2OFX5YI7S2
	 HZIg7VWJQWBeIdoeDHLdK1ysCO6BDuYIlxrVy17arhErlHxSagdlRyBrfocmf4TlKl
	 JyHeNGifnMW9mD8xPPSown7eEe7rTi7ntLlQN1Qx3CYdinXCm80FUYRiOUkMZTuRRr
	 ohwoSLkr3ru/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA6BC87FD2
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175491479357.29848.8102286625815748874.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b39878b8f9bdcdfa256c5b698f6ddf27c79bf67c61af53f098fafc25bddf25b
Date: Mon, 11 Aug 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754914793
