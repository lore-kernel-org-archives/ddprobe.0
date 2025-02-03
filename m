Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 546F825A65C
	for <ddprobe@lists.linux.dev>; Mon,  3 Feb 2025 05:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738559754; cv=none; b=o3e9uHSxTDNEo8JvS/p9zR/feASkRESFyiPQNxe2/XjRE0TSgL1+KZvMFhDDVOsSzN+yRvll7xyHEVbrY4fjLbqhsxMLrpUb7EADWf6mZo1nqQ3E3tNBxv8YUPrKf7BAdLie9KFFZmMWaXmdPhnigYLLhKvJPHrUsAbTnH13l3Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738559754; c=relaxed/simple;
	bh=fN9tkSagusMM2CTWMflq3ykt5qDHa8uNYdCuWFWp99k=;
	h=To:Subject:From:Message-Id:Date; b=D/4H3ebMqnm1uIuw28S3Suo9l07Wmf9JQEzlno4s5dL5vgKoMXjqPn/Kc1EIPWLWtfUbwyELw0zOmelZikgC4rHR6vmPoHxV/hYGwOE9sJtGbLXGZvoERhiknpBV9P+ayYbE0fNE8vQHlim0oDS7e8pWL//9/PRdQjjUk63dhgA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m03euaAo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m03euaAo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B56FAC4CEE2
	for <ddprobe@lists.linux.dev>; Mon,  3 Feb 2025 05:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738559753;
	bh=fN9tkSagusMM2CTWMflq3ykt5qDHa8uNYdCuWFWp99k=;
	h=To:Subject:From:Date:From;
	b=m03euaAoqF6lVdPGgcMB0PmKnlj/5ywqUUpKQzjp1GrcovhN7xc/TUGLm+EPvT274
	 kXC02RmiuUGv1j3cyM8Dv+v5APTRPMAIziPGFTmes7VWVJPr+/NVXgVSAuMvbmI00L
	 EeYwkytFpoeLIpYLJv6dib6Z20W/i6VvJ2I7zjlIdeP/Kkj5k2sP+mv25Ium9RLyRN
	 r5uW2EcU+saJW1IGKCv9iFHs7zK6lCvRDUaoG0XQFm4fyqJK40qewpMnCTRDMnxvD6
	 cP33F2p+YfiElydBXwuLtPu/4VB2RUZ4Akt7Fxo67Z3aDvAF0wYeLtleeHyNtXmbA4
	 VEhZ2PfYJVs/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1D88C02190
	for <ddprobe@lists.linux.dev>; Mon,  3 Feb 2025 05:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173855975361.29942.10303677212867605836.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 922d93c3787b102d657d367dbae239592bccf47343ac3f28973101ca6b73c774
Date: Mon, 03 Feb 2025 05:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738559753
