Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3F7D3A7824
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 17:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776707854; cv=none; b=RzJSa2qU7CeDfh5KDAscMpOhkyXNTehifh3wuSdDnT5JYn63Lljo7ICTIpr6sh7qhIx63+mDSm5FHM3ZlIjnEiXSEC04BQ98iZmNBv7/3ZkwbEW5VElerY2A1l3Pm7EbnYY7uYm14UrmK3Ufu4Ej3PQ4uSYAkpe4FvWa2AULY6g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776707854; c=relaxed/simple;
	bh=fCpCnLWKFiCRMjNp+u4iVaXt8ZeojSU0SVrp139ES44=;
	h=To:Subject:From:Message-Id:Date; b=FeuNO3ptHsS/Rimfuu8wHqHkNrCdz1HBhkq/4nhk027thGI7OEzz/sl3N/aa4hZeMRs+KXTyxdILPHNLLMr+hcbULANYRLRYO4CvrIUP4lj4f9uHt+rbh2fgsdeQhxCXng7myd7LajukHooWeh3iZ45l8+k++V6AO4qZVFrwIgM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OnRqWEfY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OnRqWEfY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEA35C2BCB0
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 17:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776707853;
	bh=fCpCnLWKFiCRMjNp+u4iVaXt8ZeojSU0SVrp139ES44=;
	h=To:Subject:From:Date:From;
	b=OnRqWEfYGUhV1uGa9j8xm1nvRwkv8+DiNbwdCeQLwe2mmFaojEW0C4qD/RnD5K2T5
	 sSULgc6vqFisMKIuPyrPZlkmODntMXbgQ7XLCX2DiTjVB+kSojEYXPOnETyjqfwm5j
	 N+W1ipW46zoFrdlHY0v1bw4VW36jGhx6rbyLNVkpRCxuKQisUhVMBbX6uvpySaHxVf
	 JthbUzdlnSAJO0Zl1dw01oL6zk6COTxDw9IrfWA2JOl1viGjC3AlFsWAgUCrSemZ9L
	 cKl7ZJWTwwFvdwEwqeqQYRDApk3G5sVp14FKq+g1Sw/zRSFLGsP+5PBnp24anOALbZ
	 z8GS0DOuK3ZPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFBE4F5A8A9
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 17:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177670785368.26602.13498219044731221152.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62c117e4b75592d1866b58e29019aa83c115e12bde89bf55e00e21cd20d29a27
Date: Mon, 20 Apr 2026 17:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776707853
