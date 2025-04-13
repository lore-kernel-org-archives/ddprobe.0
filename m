Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50F4E1D63C3
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744565394; cv=none; b=U+0swfatCNvuwI9QFVXUcHgQNMQ46QAIc9w0/v/w6m5+OiZ35io+SB+Zq++ElepI7cwT1wiHu01njJnhFQ4iYFLA0xypChEOW3y5j2qg8HfN4oJvMxnpQEbfxe7KSRXXflELR1OOce2+3WA8ck/pLvTQdmq1W7iWD7HOxXCjRXg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744565394; c=relaxed/simple;
	bh=yaMkosW23LsV6QaUHRcmfSc2fA5mBUIe5/nqmKcM6V8=;
	h=To:Subject:From:Message-Id:Date; b=RUPOlwy28KyFchDz3e9YvyMcerYIJQ1Hfd3WCVp0dKvZ/WStzgoF8bOCUliFLRUz1sJvbvf2BTVDLKrdtomroXUOi0NqpdHi22lURq0FSdsB6gEtcY8fA+2KzC4rff7vE5n52Gu/7vomPZ9qZyZrwCULqfOmmXLHpFFS40APVbk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r9nvh71X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r9nvh71X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B246CC4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744565393;
	bh=yaMkosW23LsV6QaUHRcmfSc2fA5mBUIe5/nqmKcM6V8=;
	h=To:Subject:From:Date:From;
	b=r9nvh71XnoL/BQhKVHAw7OFcitn78GTRR8fFIOeXxUgdMCAD6d8JCjXHLUh36eM44
	 LwxkVN37cj0d1R93iKTQby2EP+usQ7qKqIcNcU1F6MKM2WWPaOknK/BwmZkVjkTWxS
	 MZXtXlrVoAcpLdZxHLUbcm10BHZhIxK7Xzd4KaKZVpZxxwF/pnP75uLc/w3Lpp4x3F
	 nut2ILg91mnAgXEGRHVrwMVe1JR5zWiYOh3sGwsQJOzUpUIXtBdkAf8PSnU9HIWN6P
	 tO655kSbZ1XHJxdOA1sOvKtOmU+NuAzo+z7YOG3jGQHHLg9JprtwgzuonHWwwmCGFx
	 7noRjp2KdW2rw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93DBDC3601E
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174456539358.10493.12639195463680546440.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a2738dd29061558544a11e2030077a5bfd8301fd23800d46849190bf6bbf8ec
Date: Sun, 13 Apr 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744565393
