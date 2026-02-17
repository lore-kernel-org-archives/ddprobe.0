Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13B443033E3
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 14:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771338894; cv=none; b=gkJ6MEoQvMFbDFCPT6vdpMb42neJDhoCTsiuS3hmePSRv+76ogtv0/iQ9/qPNeE1/YFThLKdz6Ugyyjy5+HE2fUqvh4jomgbLOyHwld6KSg9e9ciGxzLyBQbW8fhXvHhPG6OB8iAzL93fMkVgQRC4ZL2INU8RHbqskvoexJJqgI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771338894; c=relaxed/simple;
	bh=XVqntTzqHHK3MpLwVVCN46rb1308JGdFRZHz04tVWoc=;
	h=To:Subject:From:Message-Id:Date; b=T73CU5ZOdUk53Hfxye1UhLXIlm9a4yeNGInRhovjsjWSsIY2OoSapyXYGtu489AtV3K+tQqK+qTKX7jZchEFfu8Pa0JdC63AtclK/4nEfsXuOxdJCXv8XXi0bTGn9ULtBB+bDKnoPx/R756Y130V2zeMJNx9NhAwLdjA7gWf15g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IwWJumP8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IwWJumP8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6F7CC4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 14:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771338893;
	bh=XVqntTzqHHK3MpLwVVCN46rb1308JGdFRZHz04tVWoc=;
	h=To:Subject:From:Date:From;
	b=IwWJumP84EKKMBQDUo/krSsAROGvWCTkwPOMrFogk0hAJAHAYAMoeeZLHTMZmeRNy
	 UmbLpkc106LYyHghOxnXoiqJFE7YxGrYU1gUjKutL6TZ0b7x3+5tYRZGQ6aHrRY/5m
	 kJnriGx9dA2IUBhmf7WdBa2/Aq25WR3qrsep0Xv/BgCNjQJhXOi6ds5K9MHk260KeA
	 gNLbHVUo6/5ldZ/xX/hYPX3yG2yUlDTlvrgZxeLn8xkf+gbXPF5rXtvs+v1d/tqh9E
	 iLN3RQeb/KXbfctkgUq5FdBPu9Sfoc1TjGEATlZhzQriAri1OU7oRsrAw1UNJtHF2K
	 V4IUquC5Gh6iA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92CF0E909B4
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 14:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177133889359.30867.632535902216097888.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9757ef73e9740fbbc394b82eab5ddd4c077316fa12830719d17a316f0c7a3d66
Date: Tue, 17 Feb 2026 14:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771338893
