Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED1712FC89C
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 06:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773989694; cv=none; b=rYXVSyoE450G7KANW+BIU9Q138uGgiWzs32qREiBGjGei2zeQE5EeKtATpO+lxpaWJcqXsewR0o2TnCfTieNSIoSgNgPtitgjsw3VqhONEhofm+bHh7BbuFDy18nnqEBmDYlTVYAZdx3IBPbDAkv4hQWuMvCpolTL74PGxPiedw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773989694; c=relaxed/simple;
	bh=CbVUXvNkU0ZprllHbrixQmLMndZS3lli0qIAw47Z/Wg=;
	h=To:Subject:From:Message-Id:Date; b=btwfuIlvayK0hpZG5fb9deujM+KY/aQjpIOg7bpBh5wTqSc97fTxzILWnpyXIOv30NspqnOgGOYKyM/+lO5vBO8aC4sN5CkLEoX9wTAkDanbmT17oNTPYNg7F9Vp/sCik7FPp+ooHdDaquORp35RKnX/DIVuP1JiQl3TrTzI8Xo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TD+L9hcN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TD+L9hcN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0B02C2BC87
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 06:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773989693;
	bh=CbVUXvNkU0ZprllHbrixQmLMndZS3lli0qIAw47Z/Wg=;
	h=To:Subject:From:Date:From;
	b=TD+L9hcNlClltiGj5hJvOIqIeGaIwNBVsjreI7FIoS2Gd6V3usZ27oTSvaOPBsYM1
	 HWxjUQMdo5LpqMWhweq70kyygVQdWsHt3D8wKZB8ZTyuxKr6WeX4tJo3q5V5NkvaM7
	 X4gRKvBoefx3GNOCnukberFzA8e7lvUvPlEnfWjUWLhQRt37T1aZ/Z4MavIadENaPZ
	 89gsESu7H5TPbGY2KXqJU2bbR5Y9tcqyLZHKSq5MrA8L3A90jVa6aIK+q1d4bbZfvX
	 cR9ytfGC4v9OVYc8y/lTd/qxyk3K7YHPZxPPKf5gTVUr5ajhFNdmxnwnlH89bCqCG6
	 6CtTTlB5l77yg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EDD3109317A
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 06:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177398969357.30755.6999838680277821900.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc15a9914aab7fdd6befca84733eea479783f5389ddb664f01bfe8a3dba3d558
Date: Fri, 20 Mar 2026 06:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773989693
