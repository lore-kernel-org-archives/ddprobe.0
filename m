Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ABD5157A55
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752772794; cv=none; b=f2kJ4/clvZaeX/lHqWEN8hMpuHzskBgcqfapLCH9QfCI3OTPKus0XrhFF0cLte9T3Gka3IghmFJPNA9Weezh780mxWLTOhWoqdzxSzR5AUXa+kNvNz5wDWd/9cqxhf82T6IViG8PTQV5E8qwfw2y6P4q6H0fiJkrq3tClS78SgI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752772794; c=relaxed/simple;
	bh=iOmWn/qtutvXHy1oeQUaagFiUGzJfh7K32+49qkeB0U=;
	h=To:Subject:From:Message-Id:Date; b=q73Ntnkp71/yHJiWQmw9bDCn1I7wcTcYfroDUlAI6vzvE/lWE6UShKmGpWxpPuFmKTy3QyFMc/Z3qF12k3yYg5tRXB/68alHqKoXOshzkPoitSygXvCHABsSPe1FsuCgNPMkJdd+q/2tU6GqFkXQ9+l56C8tYjCXuVhVDdrKtoE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jEsBvNhD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jEsBvNhD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1BADC4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752772793;
	bh=iOmWn/qtutvXHy1oeQUaagFiUGzJfh7K32+49qkeB0U=;
	h=To:Subject:From:Date:From;
	b=jEsBvNhDaYYaSAnb4OdfasUugPAneOq4CnbBrTD9K7ZwynlLTFBB7mIUu9wrhoH1+
	 i4dCGKcUJAkness2ZabQ48GM+FaF4xK0px8+i4+2Cw9zPY+y7JrkpMbcWAsMNUgTMp
	 sRiPEgf+1fO+JCWVJQSa5J8OqRM1TKKx5kTDN25qEjEWQkO7aW0JJOcqEtT5aRCOex
	 wl5w6M1r4ZxXvRfiwMhsxLfPZoGvLUz25Ko8Gk/nC3cURx89zEL3yCZgGFL1XAFW3k
	 lJxLqz4jG3NhEqhgGhxCuy2FehIgUeAl7q2bzVRE0CTptWhMEc7uqdvmDYwdklRdJE
	 XoigHBchBAgCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F0AAC83F1A
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175277279357.16008.16930324475436309949.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: abb51d5251d148c8f61a065d0a217b39a7f74de089b034ddcb124b9178479cfb
Date: Thu, 17 Jul 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752772793
