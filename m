Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 210F02D838E
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 05:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777096654; cv=none; b=W4cZ1ZAiY2B66bqRRoedyywobNlEUxcbElGPUgZGooU6aPGqUL5HCffmqdFAKOo0zikMt0/IcEujcQbmp2Cx0FeEq1Tk++U34Zp4S2LenRcuaX/c6KyD/1X7Q7QPPbZvEUlo/E1XVxT1l7tFpFY/ATytYMztW7NOaaeU5Q3XZZU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777096654; c=relaxed/simple;
	bh=JKVqdqun74MlmV/biduCxeL2bD9X4vQxJRWUkV+pmZA=;
	h=To:Subject:From:Message-Id:Date; b=pmo3gQQ062hQT7ODKMHDb4dHlWAXQuqxkJTNGoR7OycHh2CC1/1fdJnx66aQSG7jMtSm6N/loyXGwF3krYDYaGaE7q62yP4a0x7tjWJ7ul1xIqLKbE+JGz87uZofsopKKT94ixxFNMvZW4JS+jHmIIA1tUcDObEsZMLYEyQ6xOk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GlwEXKSt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GlwEXKSt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B97BDC2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 05:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777096653;
	bh=JKVqdqun74MlmV/biduCxeL2bD9X4vQxJRWUkV+pmZA=;
	h=To:Subject:From:Date:From;
	b=GlwEXKStxmOY2YmI39HqjwEq4ZSsnRaSTUVmRgx9OwUSgFqPftUhvsMSyNGlIBvSv
	 ym7JgxF3770oE8rEw62YMsmKS4x0UOC+8JumBYpEr2iQ8iRhOJ6bGk8LxQ3ey26iSz
	 mbgvtYlMPgb1400XvNrrw8kKa/GyavWAmpEyelIXC1Hmnff/8whLcvbT2EbU4itPgN
	 LpouZWHTmhqEnkylvsnxD0m+zyjTRyrj/FGVSnK3Dy47U4v9LDJrb3eB46/8YXA1uv
	 Ek1jJdeLrCO6LzIFnSs7lBYtS4QSSzvqbe6OCtZpiD9s9F7o5kq6K4Ylgsmz9uDAiX
	 AqEp2bDdz5U+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9BA7FF885A
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 05:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177709665368.23466.16955134872901299306.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 580516f6d78575f89364962955f232144ed527f1103bc1810e90cf54c0b836e5
Date: Sat, 25 Apr 2026 05:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777096653
