Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1611242056
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750586394; cv=none; b=MKWlgx1i5iRBOdC6F+LDfVXzPBQtWs+vKMxgMr1xL7xrVHYfQicz/RjAdEXeUMFeR2r7EJUsr4bnjivE28RHZmwN5jccyUAXeYomh7AgtBhBlbymx80S98nWJeFyAj1PknISS6RkputXCKXCWycxi5dMEJB5zA8N4rTSAvGiRtA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750586394; c=relaxed/simple;
	bh=a4/o6SUS6brA+M8CgS2m0Wz6t0B5AHjOfn6WJzD/xC0=;
	h=To:Subject:From:Message-Id:Date; b=MDCEBlbaJ+fAL93QrbhhubfrTuFt8m+NT5NSn+Wb9NOqa2OOSofbwKtXVS6OY4m7V3D0szd/LxeSwEBGYioAOHfgKhJj3GAi7CVjcntH6IcZ+pVO4tgQmiuesVOS8jvby5X9aFKHvcpCVNg9o1mCXRhcjUC3CluUyJR+z6SMV+0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nMfTQToL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nMfTQToL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B900C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750586393;
	bh=a4/o6SUS6brA+M8CgS2m0Wz6t0B5AHjOfn6WJzD/xC0=;
	h=To:Subject:From:Date:From;
	b=nMfTQToLHCvFuncpe6BNxthtOL7SDFFLeZA+Ji2sKKRXv0WK6Zpgcpr701OTZVzfu
	 6/mvXvE5mnuN2HjkVcj6pJGHQis2nDPzjK/wMjPmMlipCPFq65XSXRRijQ4qJPWJcN
	 fezMJR8qSRwprYftIQQblQ0J9TU/O6J0L1t/+ZcD16nOPjtXHSs+Dx9toYSRKtj/G0
	 uVvUzvvWZmm9M54FVDnL7pAyKfyWagx6CSn+YE5zLCkauMsLuRhPSgGxzRz4u3Cyqi
	 fdYzZ8lJcdvFHbf6XbUGqx1K8r8iYnhQGLsT9I5X24MRvWLB07dw4LIjdBtzwfpohq
	 3GxUo0tcy5UXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED3CC7115C
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175058639357.18282.7050254527527448831.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17eac19a676055844bddb9bcefa10e0f304a08e650a29f131ee2cdbc37dc1730
Date: Sun, 22 Jun 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750586393
