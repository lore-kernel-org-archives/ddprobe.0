Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD6FF23D297
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755881393; cv=none; b=OIO3lWV16FsRR8zE770yprdvx1p+E6+HHwymbdiUHC9Kzfi6tRNsa6XHKt3SlerbPXSnfOzdeoX+iF2VCF004Dr6L2x+q5JlxrpP2cnZbkbMVLTvfZ1AS3ObiYwsZ/PvFQ2XhftGAx36vUuiDpfPxm7IphbDJCEPitdYPEi6gzQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755881393; c=relaxed/simple;
	bh=oDoyonBJ92w8U7LDiZsesT/EqWuAjQJpt7cNosRMCHM=;
	h=To:Subject:From:Message-Id:Date; b=N7ArwOCxxJDdBWAB5yMBMPYhNY/hZVmlWDAA5X1CpotmBejxjEA9BgpO48/tlmQu22gf4Tv8izhqN7+jichNnABlQ2IAxruOVV0AmS4f0fkQ9VSpMClNn4txoUNb63nDhbREDN3bWD44f7aOxHEtFcnOyHQtZH3mQ7+Xb9hRwG0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qAvhppTe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qAvhppTe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E7F8C4CEED
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755881393;
	bh=oDoyonBJ92w8U7LDiZsesT/EqWuAjQJpt7cNosRMCHM=;
	h=To:Subject:From:Date:From;
	b=qAvhppTe2TjonFzPs/PRZvNoVZBKmsNxI8lWNOtcPBduEMTaYvW/tYuS08NQ52cjR
	 Z9a1kxRQU5OZUJeQ4cMUrqOYaLw6kA8k7ukXmwkewJwsrUyg7RmU30vcvOjHtNHBNF
	 miJlH40p/uLkOGOwMFfQjgOxMCTKAGu5KPg6KwoeOvYKLEjJmHxRpceFqJ0fDvQ3+S
	 OhryN8GAJz/Rfsd0gRgxXmxj2gWyPFjL+m7lAXjRJ9cDtqnBwU6Y3MU+5a9W+LcTDB
	 SPx/Zzkhh+Ns9OASoyJLMLGOHooCVzPKYxMWYtsd+EWeWRFjObDgFUp+1CKZX/ymbk
	 HpwEp/aYT1mkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E5B3CA0EEB
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175588139357.17032.14676335036637948307.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e285f864fac6f74a809d2b93992755d438528075ffd69f748a1994123c365cda
Date: Fri, 22 Aug 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755881393
