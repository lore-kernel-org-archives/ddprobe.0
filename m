Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFC2D3A9D8B
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 14:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772808894; cv=none; b=tQ2EPIiMomyxBs9L7a69fadkG1X+h+EPrJ/jKNQF59LvSI2GnKcLZJUD1ARKu4xcEWR6zP7rpmgDcABQYtAYA6AbrQsZUQlLiVqAigS+fRbbHe5A3iwHpqklfQ8vGN+XealNBTm3s4aA+CgNQoyH298ZRvxbbiIWgnuZbVwCbvA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772808894; c=relaxed/simple;
	bh=C5oiULpINOS5dUkrP6/Nd7jE7NfRe3bRPDCSyMNQCZ4=;
	h=To:Subject:From:Message-Id:Date; b=pX80nsAaxEkhO2PpZoOvtLweG+HijE4xXgtkLoHStbdNHtn4bYDG1wjHsZJ3vo2G6snh3zdhTJ+CXmw4uThGxueWnqTEfleqg8EdDEGyT09UvEk2bqSfQkA/ct0oTxE6UsiETM/Z0azz8Kirr8ZPLY66OwgoZLqol/A/Tfky/3k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PfHIGOll; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PfHIGOll"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A059EC2BCB0
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 14:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772808893;
	bh=C5oiULpINOS5dUkrP6/Nd7jE7NfRe3bRPDCSyMNQCZ4=;
	h=To:Subject:From:Date:From;
	b=PfHIGOllb0QGBF2iYH1JnPBgRaHeUutJTiDvLGmZADCeOGJ/5RU+fK3BoPMhl4MmG
	 VdXTyi0K9EgQfv7vbGitveEcxzsyLCqiDCvcyMQ4jriDWNwYp9pvkY5CMvy3z+nv5b
	 ZP/AzqKaEAnA6+h9cKXSfn7yrl135metjJWLpBmI0HufS1DuV6JrN0QVH29+kGZML/
	 GvUegOJt0LfOea0Rwf7iBJhLGVF3uy888Bx6ITiDIOwY3efZC8m+XR71QX8pCF9tY9
	 apDPJeOWmt6ya2LYUeCnjZ8k5caOv7oQq8PnEXlb58+RFyeQGPmQGcI+gxJyFI0Sgz
	 NbcZ7xoeu5yzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F815FCB606
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 14:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177280889358.27049.2692881059424841774.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84eba37ede6a1ada09f4da71a6129c849c74ee121bfadc4e425bb5a9067b4940
Date: Fri, 06 Mar 2026 14:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772808893
