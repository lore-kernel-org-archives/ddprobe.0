Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1DDF3659EF
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 12:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771850694; cv=none; b=h88jvzRZyGs2NG0nScmwkf+cvLCsCUKjdeY50acK+pD0GqP4Xeb3QCJtev47RP7PJ4iBHbBEHEOHpKHLWDqUTtafvGBUPMOgHRTpTQsnObdWZ/IqVtnR8ZFmKuuUU7uqxwHO3JdlRCmOWXm8e6YuY1iFyBLmaSvID/oCwyGKa1w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771850694; c=relaxed/simple;
	bh=1QmAnkZi2cOieCVQ1X1NnA6qyBCZgpJNCZOg6oINo6M=;
	h=To:Subject:From:Message-Id:Date; b=bS/pUxZsSxiIt7ks3aTcModi2+AWc0jKOYGToj1QIxdoIrBzeq88s5qKtyIMbxzU92w+sq7m4xokJwgjdsDhF+fUAgYoZ8bDGKl60gLapDDm4h8lRKqJOZuqG4ZXKTVI+PV6peTzVwdeiWwtUWzbWsR8mzclBffPpJxRupV5Efo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=svfNdIbj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="svfNdIbj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A59B8C116D0
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 12:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771850693;
	bh=1QmAnkZi2cOieCVQ1X1NnA6qyBCZgpJNCZOg6oINo6M=;
	h=To:Subject:From:Date:From;
	b=svfNdIbjRlZRoRVpSCbwDe2uzS5hSu+XFTLW3LEJrHvCuVARRnPhFvBufHNI567gf
	 1LJXOT6Etam1LgwBUwVvafbg15+PGsPxVOlPgJdDvk2Y6BzPSCtrhBPGLkVihZZf/B
	 45GUOM5aQZpM5IBgUcDtIj1Pvgdu5xM44O3OvD5KK2aR7dwGXPPu8NxKHtfiww+Uw5
	 RtG9yQ5mLH+tgpgPXbCEWbs7wS6tJGhVmWwbfn/5sJXBFhdRG79arRe0vJgVlk9UjG
	 4OO6SVbVHVWtvlyb/MGJCaC3pJShvbi2JNs3dle6QfMTxJbaT8H1iV4zzI+/ZQbUbE
	 7OfkfjL9bMOVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 936C8EA4FAE
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 12:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177185069358.19303.1792259992047590386.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71f5bf9c1fcd941ecbc9ee618a0897a1b37929f0708e6889e918153811e6e5a3
Date: Mon, 23 Feb 2026 12:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771850693
