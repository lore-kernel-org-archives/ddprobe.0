Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CFB418D
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752439794; cv=none; b=aj6zyACN3Z1uF7OFz26JwKYLx37z8UW5ktZWKUD4Q8Qzrc8ibV4nGg7NIDm4IgXzFn6EC5MGJD5HxtJSXrgHBQ5h17Mx+iVFsDB6Qbk18WX/NhzENpJ3vyA5+HRMPR1Re/GHRrORUCCz090OmYQ1r2NKIj/Kwlqx1PEfskjE2io=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752439794; c=relaxed/simple;
	bh=fVF0ZwfoI1QtFPtczsvcN1VzClmHwqRPMyzh0osSaCU=;
	h=To:Subject:From:Message-Id:Date; b=LRrBebvAnQhCxpXseeUKtJ9O3wzER3X0qerCTU9e8ZUi5K4rBQ4SQ2e0KCpA9mKhqAMFr7YT9AwtECuREl9HxXQykU/4lLz+m6p1nFZYPri6n34fFTS8Nv208zT57gFym7gV4Nv8T83g9mEpFrQyN3QBm5Yr6at8gXbCTJ+octQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UfmL/MI+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UfmL/MI+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A436EC4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752439793;
	bh=fVF0ZwfoI1QtFPtczsvcN1VzClmHwqRPMyzh0osSaCU=;
	h=To:Subject:From:Date:From;
	b=UfmL/MI+7u02ApAYbXpD69A26bnsytil5y0TNzW23r19qjRFEKdelJ46b+CCNO3Jq
	 dKLNSEV/V25NlPpxXwuHbTinHulE3a/5aQnUKMeUsl1oqBcD7j5vyhe2h54M8NTnFk
	 +fr+uX1bv5vcA2F3EWu3P3QBetuWddhQCp8Qg+UreLfOykwCmqy+ihjppfFD2+ywKi
	 S/p3QhmNw/Rr/Fm/f9lnFOeYLs0tCxRToDz4oECGrEGkA7alHpnz30QNrUKjwcugSB
	 FpokzAOgW+M9D86/8NUdFteLI+jABXEP5IFqkHd5y2t5hxTLoqYxPEkgAIy5Ziw5c0
	 VW6IWL0atB5Xw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F33C83F1D
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175243979357.12468.9160678890235004318.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de97c0c6bebe1d0664dd6183ab95e70b854e29b90839f874287d8326534da011
Date: Sun, 13 Jul 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752439793
