Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61AE32F1FEC
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 23:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785714034; cv=none; b=BqiJj/aSVxddcuEtnfW9yOcU/uHiLWmBTImj9qwOhIEwOh7lFE01mEqw4m7jZyV2BjoKtaRB4HT6Uo4A5ktKCaOPc0s2HyOl+mLgf9MdSnNwGlKKSHBHLvUAwFRH1aNs75Z89HoOB3oyU5cNe5jFPa3Eq/fOWfAjV+7ALZgDFRE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785714034; c=relaxed/simple;
	bh=NEQccLN4CRoRnntAheg71KuPvaMnFt/KlvmKslcLG/c=;
	h=To:Subject:From:Message-Id:Date; b=k6BZpSEJInaNQuFoFo3Zxgiu0AaHCuKvMhpshgL/OAHKZbhU7NIBOQPhanuwIWtpit1oyu+/sxd91D4bRYDOhzuUrAu3U+tl0DOLlKQ3r2tOBcdY7Jrtx3oGMpUsRJV19LKVxhzotLCxpJACf9oVcgselY1Iw54VqVUKqNYxRYQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=usoy9E9O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="usoy9E9O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6904C19425
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 23:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785714033;
	bh=NEQccLN4CRoRnntAheg71KuPvaMnFt/KlvmKslcLG/c=;
	h=To:Subject:From:Date:From;
	b=usoy9E9OsYTXCD6fYx4TEp38kOeBxwn3goEhTFx5bBEl0Qm/dMQLye+wTipvrZt4A
	 OY7b7ct+JHxRGhnFgA9q3loWF4lB7DQmOFMmHgAQcQm33l7tibrgcqi18OO2PT5IbB
	 +Xil5EYF9e+9fDE0a1MNcZjWkIj/+TQ/Eif7jnuxYtXmoS0hZQFWTBUTccZCty5ThC
	 97qc56jHbHmepPvxlgSvC0kJMJWjZa/W/h/Nc73MSLtOvwWoFcj9JDp3b4T+VMkQe4
	 8D+wHGaUW4O1XFwkW7pieJktNjAB6V3WWx3sXW4Bh6xF0ORQ++etVeujR5paLVvfj/
	 Kzwv1/a/gGgNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFD26C55174
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 23:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178571403368.1706.14661736918116730314.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0ec4e139845779bae6cb56657f0196c752fb3a856e07f4bb536858b457e0985
Date: Sun, 02 Aug 2026 23:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785714033
