Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B8B9377EB9
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 20:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778962834; cv=none; b=FQFEhopZAXVFBm+QrcQx/isDKD4iK8IshR8sVQqAbFioxrwfIP8WmcHMhrmvUuQ7I6OdflH6V+xEOH2io3QkWn+QE1vPseCyO4zn6eq0PEsNFXpmfcXI84hsikSQJtIaQBYMLM1iiSbwlXA4MTzzErzudNYR0Q1a4oKfgsr4Mng=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778962834; c=relaxed/simple;
	bh=/Cbd+ronnfopL/fYAVemUO4SBdWGcGUjzWhaIriDVdQ=;
	h=To:Subject:From:Message-Id:Date; b=TFz/ozNEExSOAi66apzfQeKGKAqQicA5PQeo0znXgjQvLhTxaJMbdG2N2rzm+/UYB8O/VNG9ZHvEO0aIhUMCNidvXY1Gs6QoFGY76wpfyH2g5xikRtBPQNkZEkCRGpJBHk0KYO3bZ8HqzT5PMTPzDIR54qLIusF8lvK1ilpouv8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AaGOyuF6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AaGOyuF6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3092C2BCC9
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 20:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778962833;
	bh=/Cbd+ronnfopL/fYAVemUO4SBdWGcGUjzWhaIriDVdQ=;
	h=To:Subject:From:Date:From;
	b=AaGOyuF6Wjq13x+TdX7KLTWRWPvS2wr9w1wyQ5sshR6dwSWjmas1xGqEQrobA2kXk
	 Tb1Swiq9H2AkGChROnKpYIit3bH4HZGKs4vK5QkFEu8H/NG3oX9pvEQfIhYlSHTxAw
	 6Q/lewdG0dWbOq8kGRF8o5gnYs9hf7T5PtGq6HHqgkXuHi4iN2P2EPVdFLihn9SDtB
	 eXZhbJJ5jdlC5zm4+DkCNq6qY/Z2IqpXS0OfbEZKLLeh8obxBlmHmqgLWzka6chTR3
	 H660dzu1+A7iQ4vMYQoy09e/PJ7fGefob7BN9iQ2Bru5DSzAyURun8dBIC7APgQibm
	 RJaFvFsRNOWhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB512CD4851
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 20:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177896283372.25046.14175650186891093546.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb7797742591225b81f4820c2f4b4b202907b566a0aeaa8e07aa6ad6cd0a95bf
Date: Sat, 16 May 2026 20:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778962833
