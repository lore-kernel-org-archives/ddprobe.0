Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D282618C33
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 20:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771706093; cv=none; b=mKy2uva4AGkfoLAmdep4LRzb1G7NE1xuk6BgKLgjsqJu7+upL3PR1C4K4U/Fgb94DIDWsa1sMKws5I/A1UUl9AjQdsSz4wjVNT0LUqV2yrxG86G71jLj66mTBp8DUPLmApi8wHU6fpBjNJzd4QMr2zJWQRGQCPwPedeitLpDLT0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771706093; c=relaxed/simple;
	bh=k2JmwHzyVY4rN+2Mc5hnO4vIFo/Hm2XedcatE00t9Tc=;
	h=To:Subject:From:Message-Id:Date; b=ZsxuJxPT2U2MesFArEwYMRuor6iCBsGEhvQ1PvpjbC77xJ2fVhGkHs+LQTtug8yVUw4SYFPo+dCLKbpUE2DsQS2QAQmH42fVCk8h34vSdBNA2bjXh61hgvYGbdAmu8SxHE7nRNBiKkiSnaq0R+ZReBGQ6ahGjPEyphBXAEJQQ7M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I912ijtB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I912ijtB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABD52C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 20:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771706093;
	bh=k2JmwHzyVY4rN+2Mc5hnO4vIFo/Hm2XedcatE00t9Tc=;
	h=To:Subject:From:Date:From;
	b=I912ijtBL+b1JDQEazVhojtxCpwlkuGAyrslE9ugBxU7PVRa4cim8UQpwipPMNnRz
	 DBr+RMFK/ZoJHcYmjrHy4ZHDCCWJDc6xSWePQAtqCnUFFr/amRPYxiH1PWMvkBgMYZ
	 i3CSJlSj01Ys6H02x6uVqAd+wySMDhP7rDWlu7Uq2wI6yp5EgUwaHS+uN/lWuWUMGV
	 ZJuyexigWFsUyQBeMUNV9Vhxu0kSWSGrxKsVLQkeUe3/8BdBpHpMicdmyf3+7qA3ne
	 OteiYRxi4tddP7ay7XdqYPFe1MztJrvVsMYjx0xjgvWfRkG7/EGPXeLzqRHF3eTRt+
	 APE8nhCGCAOqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99C2EC61DEB
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 20:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177170609360.3433.12728678006974555985.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6cf535b6ea07c97034c110ebc39f214d58867fce9911ffa30feae61b691033f7
Date: Sat, 21 Feb 2026 20:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771706093
