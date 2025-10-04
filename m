Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2891E1C1F0C
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759568394; cv=none; b=f9uW5fiPx1a0+nPD9/d//QHf0+8u+6wRaQb2Pt+2hj4kN/p3wbkqjAnSWq6A2u5FyFUO8Mf/SmW8ArLlG1tpZt82sWbPaiA0cMWhUewJ3E2kimC4JHzTf79xJJcB1QTMmxLb4VpdsSACVfCnK0wMYQH7jxgCMbWvwM1ea4uBoc8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759568394; c=relaxed/simple;
	bh=0pcK9/EAdEJhmBkZhBN8AsC8UPGbLNMbN9c8Ge2RtJM=;
	h=To:Subject:From:Message-Id:Date; b=ehmexuJLe4sItD6z9ErjOQkbsqHAI07RDVqr+cYsTDnyOJxskUGCkjXy7YGHQ+Uz77AceCxrWan7L1nPOe0dbSj2+OdFhhABBqepnneA4XWRD8xBAw5WUiYP/FsRlCyLtFXS444mk7ZC4kwtnl3xYvOYWiCr1J7QNFHeUa3Dekw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sSRAzBzZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sSRAzBzZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6A21C4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759568393;
	bh=0pcK9/EAdEJhmBkZhBN8AsC8UPGbLNMbN9c8Ge2RtJM=;
	h=To:Subject:From:Date:From;
	b=sSRAzBzZpaD6Eg8NG/sZrDlHr7oFmD3Sw6xLYM4ldE/OfcvdQeASEh/X+zLfBeupr
	 yTijk6hd3vjYZEqq9Z4IxqoIlg8sSPGCFUuI1MHTh1vDFF4wcqEp9sQc39Yi6MqrSO
	 Ywtpe7SZb5e15VZBSye07K7z07uRWw1dT6uLds461l8wLZqbM/NIy8ipH9t++IsNHo
	 0+pTJ4J6DyP/oUYtTQHks/DXoxYniYR2F2/pVPpUXUK2++jrPhkvY6nw7sPlUEJXK9
	 lttXFYirykFvzBPyk0fLpcaKvteR7B3J/4uzIEj7cmMZzpqhxE+FKBbuNu6niA//C5
	 C/IUTnk3tCb5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92D28CAC5B0
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175956839358.20788.6550207777570251059.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f91c949e4f9b2098df15ca238b32bb929816f2581c46da5d0386cb12c1149c26
Date: Sat, 04 Oct 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759568393
