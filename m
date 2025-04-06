Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C6971F94A
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743967794; cv=none; b=qd1ZSVkKcY7+H9zjzSUTPtXnV9EGAykwpFDFrpS2ZWOKNR3yTi/9WjWmZ0Fs9HHVvWaohFp8yP8l7UpoC6wjpkFSUjnL20YtxdhLMevA3k9ZtjwY4BDfdyt0k5zgSIkJLYyUT1u9H1Qx1xRYG3LGsZDXizR/V8psNbbBJWwRUJc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743967794; c=relaxed/simple;
	bh=WZz2y/5cTbL5cbZQPpI7HWMmQHQHvFyb3HC5/z9F7R0=;
	h=To:Subject:From:Message-Id:Date; b=AoAtNox5AhU9yrInyZK/t5U4PN66UyMIC5Wz16RWV+XmPtgQ1B4Kq0Y6WZxRXbBG/lSTxOzGjtDooc/58pSiOB1tsCDBIpiAWWKglYHOd08I6cKoRCVyM9twmi0xnMW/f2OmySOarrnRe0mALphQXtnk7jAKHubfqiCuoxTQvcc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y+MwGdc9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y+MwGdc9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4727C4CEE3
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743967793;
	bh=WZz2y/5cTbL5cbZQPpI7HWMmQHQHvFyb3HC5/z9F7R0=;
	h=To:Subject:From:Date:From;
	b=Y+MwGdc90gxazggbuHAD9xPq9gbF9z3kJrdviL4rU+vD2WeUAMXwvbaRjUKLmZWtV
	 /JlHhPOv0WewaBRJCGchO4q/z8eQRr4ZC5L4wei4S8VbPuPt4N/kBdI10FTZhP2j5W
	 JAF15Y7gX6o/XawAFsVbcsmW+DFwtnXpAEUCXOjBlOxVfz0v2Ul+J7Qk8lwGhwb8ho
	 owhTwS2bCix/xpWHHPAB6A6mfIz9OkuGruQ6nzQ4bku4Y/pmMYMcIkGT8BvhRov7/A
	 ZtVH+WULyX9evgh86gg2ECnPT7ZdjoaMpMcx17Lq/bRq5Oc17tyuYWw0e66mQEGRrC
	 JMP2ehoqFGuTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0AE9C36002
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174396779362.12582.16099325832565458725.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ccd428867224649bfac1d99ea707893d3582a489ef2edd6fdc688192daaa1822
Date: Sun, 06 Apr 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743967793
