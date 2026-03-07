Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 285F234BA59
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 09:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772876694; cv=none; b=HB7AoUuHZU305JjLyYBF/3dqoNnPVKRZxrquprJcSAbaLRn8okwR3X52R8hxGSAeQ2wpuxLwGOxcznEBPZlasIWKNxtEq/O0B5QCrNuudr7/HA4cIyd8UvKNHwvgUHYeELmulL1g7hP4sVMoQR/yF8wjxmYV6T/FK9yBsRMXt1o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772876694; c=relaxed/simple;
	bh=dp5ZMkAPyurMcLgUGcQK2AyxhLMAjEK3FDNLwsnoftA=;
	h=To:Subject:From:Message-Id:Date; b=XPCkQYPgWPP074apZAyS5ZAu/M3fXwYicYQY/7sxetkup2elQz3zXzXtYKk6yuokrdgryg6xP5z4iD2J2fmMgBjzwuYMTLkCBB2/x2SKmE65tU9guBaTw7AKKSibUTd0jt4ScPjgCHjT9Zqy5NJ7s2PcghnA+2C/hMQa/HDI4hc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lTvnXa7t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lTvnXa7t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACA4FC19422
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 09:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772876693;
	bh=dp5ZMkAPyurMcLgUGcQK2AyxhLMAjEK3FDNLwsnoftA=;
	h=To:Subject:From:Date:From;
	b=lTvnXa7tN6wWiqIYxyuXaoUk/yzXtIBmcCjbH0kzWZ3PNwIMUkuZYqvfV9749LZUF
	 jblnqxblaIRJVdIrEFi3CjpDbTlWc+T5H6vm01+cLGrwEKNh5h8AZLmweGWKpGAvvn
	 W1yU1Eaqk6HCLHxARA08i7IQ/HRArybu9/qbvoxxfgZuyOP8ROp/CKThXpcY+ysfuh
	 TmPqQwb3KQYoExvS9WLLhamsoT0AkTiMdjwksXdhFT7/t6bBMzLG5neEahNMtolkSv
	 GlcGvULx8yWw9oHGlMM4w79SUeksNb/E2RIjJM/4fHSlEJ5YrvmwvucZdA6+kLJDuW
	 F59ucYex042mg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 947E7FC9EE0
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 09:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177287669360.16020.7381156988666391940.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa45c7c5ef890dd39d7aa99456070daffd5a6210d473308720010f8730f23038
Date: Sat, 07 Mar 2026 09:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772876693
