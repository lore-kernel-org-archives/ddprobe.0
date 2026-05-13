Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 206B63AA4F7
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 19:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778701834; cv=none; b=XpE42x00/Da344yxFas8nPAPnUVYEm6EC1BU66+QcIU1RYYws2BddnwtQwUS7F5kM3v7s2IisFxr10Iduj7t6/xdFf5ZJSAV/n6e7TPLtUn/Ali7lO9uoWZKoRvLl89dn5RFqKVge1P10UZNO0gBmBAKBzDtPBi1DPH2S8yPxRo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778701834; c=relaxed/simple;
	bh=DS0sv4/QQM2NrzfvBDVwOorcP2vrOhiFLn0w6Bn0Ci4=;
	h=To:Subject:From:Message-Id:Date; b=tmPskc5eLVtAXoGx0czKfDzzVXy3/RqlDHrSlk+IX2LP8ZwkY09W/zRjp68AcNNQn86kco3ZM9PDYLXoXQ/2ck4apXj/I5RKaHkB42qcTu/slZl6yBTuvG7qsLFJ8LlCDpwdVUJfL+bILEUPCmAtrYH2mowcatDDKgmUXwgLLlc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L4W1CnHz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L4W1CnHz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B664CC2BCC9
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 19:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778701833;
	bh=DS0sv4/QQM2NrzfvBDVwOorcP2vrOhiFLn0w6Bn0Ci4=;
	h=To:Subject:From:Date:From;
	b=L4W1CnHzjzxEfijl1OsTZd88+qMIjlzjsC4r0dqPjox8lc9tmSPnDoU6VvcMXaXQ2
	 93Cm7Ycy/NuVeaeCLePiz/TC7KFW5zBYmV0Xhbbuzm9M0gRMGncLbntG9PM0sfmbPm
	 XNCh2Hm8O9vro8eGN4eFfpe8MrwBqBxNwYWbH93NYncPwTVvoR++Cz9Lq4NWUXp6WJ
	 R4A0yZGdUWCpCrK9Y+n5zgLQ2oVf1h102LrZjFmpC2KbPPLix1Y8OdzF8TD1ZB/89a
	 zE6Yyowcq7w/b9IUh8L2WiMTH5GoBCshGHT/J/gcMGN8s0QNfEI26FL6XP+nE0YfMP
	 fK3L5coQ2fmZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA2C6CD4F21
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 19:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177870183368.2969.6429700512260438490.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a131a14c91a2ba37d513b7cbd0272c86d4d47e0fbd6e10aed2324dce7afb2615
Date: Wed, 13 May 2026 19:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778701833
