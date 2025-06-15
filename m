Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42F7A7E1
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749969594; cv=none; b=rUuCh7hRsq5Sw7UaqZGTlZvJ6tLLEOB3Ee5c82zd/GkpD1lItBZRFy8ODwgZKddGq+9oWjwynZ3x2q/tr9Zbkj8P9/f76NWBPbknH1mWdHpx8barYRGiQTP3B/5jrRPTKPHoHlXrcmID+z2sxJ7THN25HWgx+Nk2PEgq/nEyN4s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749969594; c=relaxed/simple;
	bh=piBE34yceqKYWDMuYepiAPQseDuwcRcc03FRnP7F/Rw=;
	h=To:Subject:From:Message-Id:Date; b=ZZ0FJy9jov0iFEL0RTpj1Vd+ztl/JWZT3f/gi6ktUwQsknbxUPj/CGRSBRYyTezLYDEiR6KFNMSDGOTJ28vh7dzOmq1n/IC4rd3oGaNHDHJtOQWpqkb3NsNuX7bPAp4sQ36n6AutZozUvIJLCoyiwk9ynFj80fi5j4uLxSX4Qn0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aDMB3bNi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aDMB3bNi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC913C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749969593;
	bh=piBE34yceqKYWDMuYepiAPQseDuwcRcc03FRnP7F/Rw=;
	h=To:Subject:From:Date:From;
	b=aDMB3bNi2L4YkCx8UIcfrV4fdb3oW+4AqRyMVUG6vb6j5WtEKkr8RMFVFkqvXDa3Z
	 L+fUzt+uylVHYPJNQTzIWVGoD23XqLPyGCQnfKn5x51XFeYMaIbUo06xmAToXwUI6/
	 RjkOW3znBt+09GgU7wKFH6SDfS+ELnNTHErXBzOT7I9mPLXi1JssE6LbCJsGi5twN/
	 C1XHsIyQmLgzQSeOc8j7dTW1f02sZegk00umUuuGgWu515Cnj77moab++UpLfLBCNw
	 3s7ujALMfteqPblSWbyN8Dnqy7M41EIHllEkBRf7yVckmBNP6NFQX9OHqIpAwmUL3s
	 kqKTLuYLjDQCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 993F5C61CE8
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174996959358.994.248104905879218133.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4bb55b6a15d939d6234f21f1f963d8617fd577b51cb5b5da801ecda02b34509d
Date: Sun, 15 Jun 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749969593
