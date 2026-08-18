Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36D5F37E5E1
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 15:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787068234; cv=none; b=WZdKaOdjtZJ8PA7dX2Z8In3H+G0nuY7Zswz8yCBx2ECqTbN5IJ8twsHRCrfFvK9/EQVSYoRwEjl2TiC7ZXuPbpZesJJyXRks6XFQxf2J8JI64Lky/kEZSUdtziogJnmb6+PrAZG8ToldDhmYzrR+yiRZOYjzPTrKzeSI0fb+bxQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787068234; c=relaxed/simple;
	bh=yXJQ2ghFMimAA2MlDpfJ+eGy3SCyiDgzwKE+MAKyQwc=;
	h=To:Subject:From:Message-Id:Date; b=KEMc9XfMu+CsirlHdy1ezBSANovWwmPnvzufcfQT4r9cNLsK/mYObUaA/vBk39Fw1il1OAuFF3HhrhSGhcJ0o8XFmhaMBQPjYF1FST4QQNTKSateuX7qpdnwnPDaFrjNBTWms/Kzlw4qFbNUC4Xu2VnRwL+nw0fSwsy8UXylB9c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nPvZnSi3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nPvZnSi3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF7ACC2BCF4
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 15:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787068233;
	bh=yXJQ2ghFMimAA2MlDpfJ+eGy3SCyiDgzwKE+MAKyQwc=;
	h=To:Subject:From:Date:From;
	b=nPvZnSi3vrARKg+Qswha7tAwkiB3/qncShnmDTWjLmclNhZx4BVFnAPLbLkAsBP1O
	 gKrXkcBOEPzGvnPXUTs6LLT446QuANoCohrm6X1rZz7+dXHPw+KN4w3Zb7lO/8+/SY
	 uLWz+kgeImmeqUQimahbYeU71jFc/4zqGkeT7ae6V8Rkl03aMmyEKKr5tprmChcail
	 7duUXjw/IRiNJ3h/mklRvWVWmmNv8Qy74EepOeBFyVU8SYgsCWb2151Aqk4QfuvteB
	 L6D7pyLpkUQXWyuRRbEoOJC5GVAAZe8+aTLcQNthZAmlGksrf8Jj19W75WKh8qzbjj
	 t/cTJXf6HRXRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA735C5DF81
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 15:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178706823368.9045.5519518743458083260.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b44526163ce36e365e6e367435078ffc67171c33f88b179bdadddb29f0d80f2e
Date: Tue, 18 Aug 2026 15:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787068233
