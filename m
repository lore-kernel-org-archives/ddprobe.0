Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27046238166
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762732794; cv=none; b=UQFTUsdco7d/tP0jfvfhQl0ltYwxmnNYt2vdrLa74GpzDQJgLUOgwOCDP/VY/Dh4KBviUZRxMlGYKKATmCZJRn4Xc9XFxR8QF1kodtx0HIpfp/ADXDiBzgqoGYfZBJmnUiF/9sa1y+nIFFMmKC7iA3kVVs2Vs+6GnZ8Sy3x1moc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762732794; c=relaxed/simple;
	bh=v0KIrx0ysOfmLDtb7hkT1Sf5LqwvTrsdF7tW3YHu+TY=;
	h=To:Subject:From:Message-Id:Date; b=P1PYLO6XC9bbnMFofYZTcL1a7VpQgcJxwZn5+9Jt/2ZZraMoV4Uy4aa18n30QmZdnQ9m00Gb1xkZ5UE1tHp3VxCk8fF0eom91HJBEbRUjT0l+jeXOicUnVxp/3tcAOpBMJAVWli15jRMJtv9LSt+Xe/ZK8cogG9Pub+/9LSFk50=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D+gh0PIh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D+gh0PIh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0F6EC113D0
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762732793;
	bh=v0KIrx0ysOfmLDtb7hkT1Sf5LqwvTrsdF7tW3YHu+TY=;
	h=To:Subject:From:Date:From;
	b=D+gh0PIhAtHQlup0XH2QLsNNtFkXnm52RChDvU85JewMsxrUs9OgnY5abeo7pwnie
	 cuYoqC3H9+zLTutkRMbo/KallWwv5u1gaEtJ5HZyYwLbLm41lh3nXqSpUqs4q7TRCT
	 3igO2xTWJPV0Jq1fpXO913Kg9/McP8LIIEPLkSVHsf3DQaoWXmKsc8lzTVBjwDdox1
	 aODJ59EA+oIR+XJeDgXf2Eu1Dv/eh7OLgy8WRs4SBEwtAxWqbZStWla7Eu2zy186jp
	 M5/ZulU2Ip2QKNgbBfdoQO/LNMvKqcTfcXQwxefBlwNrwazlmgmjHfk0qsdzvc3Ck+
	 E24jIDbJ9A8iQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9160ACCF9F8
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176273279357.8164.7266170489116361156.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0836ef92c845fd7f9af8867da20e7789d8f6f95f2c0239bb6caac75e94d46f10
Date: Sun, 09 Nov 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762732793
