Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64A5C38A73C
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 19:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786822234; cv=none; b=Hnosm35seVHTb+1Dgpot/60A0d9Er9ic+MmQbumWR04lof3RuzxKOD1VwjWHxMmOUcmvFpS+qcZHhh5e3KcWmUfdsYFImaMeCGa2imvN2z//2B/N14bcZ7CFPw6hGr+PQPrXCM68qwFSQX7GdXhK05nwPH2qBZZsAdwZgxKB84Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786822234; c=relaxed/simple;
	bh=/fPtrxUUSA3disZAMiim3JdrKTK6eM+xGguqbcfE99M=;
	h=To:Subject:From:Message-Id:Date; b=i0U+usWHaaxdI47Qw1ja/+NxkV0UBDJRvtscofWlyTrLBvMi8KbBwY+H2ex8wlJHGkay1DF/ToVO4OTkFYUgbetP00fVJeKXxnFhb4ys4GGi73TmdgXaJ6sA68cvtm0MKKIXhFvXAjaPW+VkF4r5okQQkUiJhJ0gnQgQptPHU/4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g1D491+8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g1D491+8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0D5AC19425
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 19:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786822233;
	bh=/fPtrxUUSA3disZAMiim3JdrKTK6eM+xGguqbcfE99M=;
	h=To:Subject:From:Date:From;
	b=g1D491+83R3U3m+vWKNPBfFBY6SNO7NzkPCGyVOM4VI13bedGuE+EJKHnVnhEq9oI
	 hJJOzrHXkpCEf73cDWBc0DkJCmgituIXPr5U2REc3GGlHyGw2mYLO+YIQX7XFjGzd0
	 1sSy5wI3CkCGHfQhYpnAxtqtGbtVHUv7m+BLbck0wBkGLiY0MBVTImaL4gECu31wDe
	 mkkx25eje6XY0+P2lQeWWNLPOzfQSkbNvajtbd6hkL/QIHNnU/4HehLC2gRFXxa2vl
	 qGazeaa9Yt6XIt+i0kgaA+7Ve5Mk1QQGtoXzPIAMp+0rCKAEej7w/z7ewlaUmNsk4q
	 Lh4/YAIvmJ2oQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6E5BC5CFC1
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 19:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178682223370.3912.8162813033902646460.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 601857f6ceb03ff2597420cdbe4cac752d327006ee7c4db405443e1ff5dc7226
Date: Sat, 15 Aug 2026 19:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786822233
