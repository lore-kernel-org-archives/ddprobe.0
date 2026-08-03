Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF51A3CCFD8
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 23:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785801034; cv=none; b=rIgyYZpS7cOoX2wUsijJe1fqR0UBSsq63Rq1UBv5rbXcqOODiLJstFSHhnlaJ2YQE/vnJTpYBWURGCL1lsRInymnhrTLANcPJrFON1Iu0WJCnNHiGpQDilkwBeR8svDdqsQGVSyU8l++Rm9MaEod5UvH2Ub13ylfw+2xdmzbDZk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785801034; c=relaxed/simple;
	bh=G6AeVXAMWMI3FsJ3JLAI8Zq/9Kuj9vMjCFoxSi+Psmg=;
	h=To:Subject:From:Message-Id:Date; b=bQq4OgEG562aCq61g902iSx46AOCzvofXKjtbi9inqQfjwReLHJOU5K1xNpdLK0yhMVn57/LBkP8AR/GXJH086/ZnOAESzwGUODdXxjmtn28hOeQkYg4S3J+gzV6MgmauChxLHh7KaK+Cb5iCVYtJNssMIFj8t+3ip+/PRyRkIo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eRn0IfdB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eRn0IfdB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD934C2BCF4
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 23:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785801033;
	bh=G6AeVXAMWMI3FsJ3JLAI8Zq/9Kuj9vMjCFoxSi+Psmg=;
	h=To:Subject:From:Date:From;
	b=eRn0IfdBlTHHr0ST+7tjfRO8FkrWf1QjSD6oqcLKoGdJ3WN1mZt+YG8CjxtfOFLUd
	 X38tpKq0ILSH4Hexdz8CPpEwkAYF2lsBRVkrCvuqrOg93wTtgAqscrIMYAdXv3kZ6N
	 lVXtED1o812+F6mYk5+fem9+QPBjv9eTZEyi88N1+Ffbktk9j8cYgH5ombR9NtChil
	 IdXsqoQ13ywzyi/rEKapp+UliP4HkdH180iTXhhJO8+xOrt7JiQiRfkkngVyKmY7qF
	 cPT9uZyc08+A0tmtbpqk4slcMOduoa6WU4PNxqBzCKxCi3t7ChSoVyA0bF9uS33vhI
	 RCwJvGCss7ZGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA70DC55182
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 23:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178580103368.14426.12182593473926242131.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a2733f92956660aa37082c3033fa3085551e864993c13534ab5608bec5a4bc7
Date: Mon, 03 Aug 2026 23:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785801033
