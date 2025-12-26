Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 233C71CAA4
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 12:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766752434; cv=none; b=HCgcJEL8v+EqAtMe3ENN8eX2gWj/eFjYicgVauNRtUXVwDK88QThUZXkarhT/l0AWgZ2PcGMy3HZrtSmZxC7/WrloXbrawwPwQF51t4N0XRnxRFT8K8DEhN2VoxDMy3513hADbppSqcx9+jguAy69HllQjzS+JqgAarAqL6zfSU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766752434; c=relaxed/simple;
	bh=BzRnuMxRY9mROJNM+om98P0zQz4OxB1B4tHc2+Fn4NE=;
	h=To:Subject:From:Message-Id:Date; b=VMtfjLxxy9xOVz5vRS8KYiltcXSCaRqdDWaxSHHWwR1iKZwbOR2WxPHFOAFmkV/P1qDJiju4Aoul5suC1/V0rzkl8LybOY8Ne1SxXptW4SLPnNArfur/iz9s3B5gyXqVFsL1QzLWKDt/QGY6YSabuc9ofT2PCqH3tij19HNN7Yk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RNXVj3uN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RNXVj3uN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A32CAC4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 12:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766752433;
	bh=BzRnuMxRY9mROJNM+om98P0zQz4OxB1B4tHc2+Fn4NE=;
	h=To:Subject:From:Date:From;
	b=RNXVj3uNm0TJNLwEN92U3+JMoD5nGL+3DBcZrVmQWSn0oocXvnsDJoSr0QaGnifR0
	 3Jb8d9DVWuPa42cOk2xtcktWpOGCtRBs7diPz2Zcuy1kVgHDfEcDlvI224ED0C57zJ
	 UVk6smAsLqr9d+LUkn81A+GFsEwdQbctvcZ6RG+OrsaJf3cHiEgwgSBoKeTRWHNF4C
	 Ijp0sG9qwauzEEM6UhrWJrUbRGL0WxHoRY6URatK2Wsd00Uo+kXvW/4Rhf0Muoucag
	 zNtQJOoRqIhS+vXrhxj5LhlnC/vRtEYGfW4dfmgNCR/LJ55oVlfb6fMJNUJRG9LVEA
	 RsrGC8LXqJEXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91CA1E8FDA6
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 12:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176675243358.27454.17494251035443344457.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3938885f6015f72b7fdd3301bee7b7c02450b51bb1a7839401317eb58a31497
Date: Fri, 26 Dec 2025 12:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766752433
