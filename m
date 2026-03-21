Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DC6F1A9FA4
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 21:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774127694; cv=none; b=FwPjyO/LOG68RhhRAKu/qghVyT+3fSLYj5NnAWWqcRqW5VzgWANP47LhbX4EHOf+HPcmVtp4Mg5N0jULPrxMXTPPZrVsNMTN6ZmRPI4dr7u1Sx2qC6niwqAqnKYwEYrOrlZ1eFBJke+k0foAGe9DfNSfSaHNOJ+fJNopNR7B9W8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774127694; c=relaxed/simple;
	bh=gHLrzM7Tji1FDwhOHVPWXAJnbA9SFMBdkXP4duT+Z+A=;
	h=To:Subject:From:Message-Id:Date; b=jDkO/dDJHTIuXSc+bI8hVmhB1HJxfKDftZjlM2PONm6qDU6MV2riTUcdmy/O4wgA2VgwXNSP0Ge+QKOdUMazynFv8/8Vm1IVT/OVF/IMtR+P+Fk4sQ+O7SY6i8pj63TaoKMsptRR0cKSm1rLNJUsiyS4Wffr1fOaRaPk19neyD0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FdWiAo7L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FdWiAo7L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A29ADC19421
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 21:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774127693;
	bh=gHLrzM7Tji1FDwhOHVPWXAJnbA9SFMBdkXP4duT+Z+A=;
	h=To:Subject:From:Date:From;
	b=FdWiAo7LtPV1IUNZEmvaUevAa/WdYXlSGz8cedZ69x7MTFG7Vhcri4TUlUXka8Dfk
	 F05lCVkqz0tp9WoGS4fgLqqRj2evLIp0eZ0JdaGTxW2kwElQ6bpLtO+ugSSQ3DrJNu
	 H0IVe9hTkdlrA4f7Tmbe8Ge49mIfvblSYb1I45RIxLIbW6iS9q0gfqlxXpznCfMnhq
	 xhuiyzFQQIIgD3G9aD632IzcwHgBx1BS1knX65DSsZ3b8lrpMDsBlhUaVerG8EbTkU
	 yYLvVYWRklRZYN/3wIhuedzUd4QrzUxCZAWsml4ajF2CeXEI1+kIoqJB4x0h7LSzsz
	 E983P3qy4DYyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 914771094481
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 21:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177412769357.26095.3244676202283107014.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75c62c752dbbb4187c87ef1ad32cf6714ca280dc50a6aafd7499bd1ad833ea72
Date: Sat, 21 Mar 2026 21:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774127693
