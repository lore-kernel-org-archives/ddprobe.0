Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B3601FBEA8
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 22:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783203514; cv=none; b=gEVGyvQSiAPWIfjUXMope49omc0scoA+mLd3g52Tob3u3MydFVwJdVXW6/rarnXHtdhG1qMU9lrTjCpVadcNKn8U08mxHeYNWvOTaktAQ6P+djLkij0r3tp3NltOC2bGG8h0JD9/V4k0tZjRGOpEEGF/ceuuBibajCd5d6CRlNc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783203514; c=relaxed/simple;
	bh=cW4muV/Ik1NFOdSdG6n7bSNUGxi/oFreFHtp8AbSJrY=;
	h=To:Subject:From:Message-Id:Date; b=DTjuq7pcUE3GWuLjljGRnYAhq421qnYuXd0PXw+JOhsKZRhz4SxfWGRknwLE0BQjtGLFL9hIiKRYUmLeI82suCJr7Kdm61kgVuYhx2HuYRV82GpAXwEv0/YuIFeTUqueA1Qm/a6KOXA2HaVmeE2xyRIwMyCp3OxLEy1BLO+CFDA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rjngeKcl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rjngeKcl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF7E4C19425
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 22:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783203513;
	bh=cW4muV/Ik1NFOdSdG6n7bSNUGxi/oFreFHtp8AbSJrY=;
	h=To:Subject:From:Date:From;
	b=rjngeKclC3w0yHhsaPCMfPPAd+yuD9I6xxtF3IzSu12vq4Y2UpPxjz9ZPhq4ev9Hu
	 K5Bz1AUCy8rq6jy9QEtqGfUlR3O/GAjYpnvjaKGAhrUsMjD8GEdFikiIPN6IpiQVj2
	 UnUXN8TJ9Gqwi4h3zAFsdOPRC3O3zj6I0w+idlpyqg62eFcp5F4GtIEqbYiV6BwJHG
	 Bbhab6aaaX2O76j428XgSjMJZb8CgWCNttP7kLGtPw2YvvGR8fLem53MmcpJnT3Ir6
	 fvDz6KXOUMiJ93slH0Megj8/O20dsIdhnzEmwNJKhRhKnFnkMfvXD4gt7bZHcYdnaF
	 EXZ2fFliQKmxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE200C43458
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 22:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178320351368.22547.3503371078487285941.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8484e6aa76abd125edbee13187a771960c3a657104c9462630e41b9f37554ee1
Date: Sat, 04 Jul 2026 22:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783203513
