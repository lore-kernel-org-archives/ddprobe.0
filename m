Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 242DD34BA50
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 17:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768928634; cv=none; b=KCzzv/egNks6d4uFlWqRwn4C77oJxlbENt5B7Q/AmWZ0ZtQF+f3w+fDFSzL1mpReGEhI4NLH2LSXWRtu5ZOl69XYGUmiHE4WZGDLCt96Bgn8QdoFgfyrc2fDTrbua+8O3jQEVgCn8Rd2arHf4xpUupgqTdbFGxCkyjWEziT/1z0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768928634; c=relaxed/simple;
	bh=v1/nWNvIN7A5cpchdB6BLQ0DOoTf5NA8Qg+4dIs/bqI=;
	h=To:Subject:From:Message-Id:Date; b=CKVvdVnc9au1vixHkPWcaF7kLnQshTuAJtwZgEPaQZxzSQbwLLr8gle9VIPzd39dvrJqekw+NZCUc7ujv7rn5DkZuvIMEAweLSzb4HOWWQXR+D+WRMhAJcUEYJvRMsOSjRxUnXGd8ZXbgf2cCt4hn1BQFSd8zo7NzE/v2bEERVc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a+Eoikru; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a+Eoikru"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2037C16AAE
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 17:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768928633;
	bh=v1/nWNvIN7A5cpchdB6BLQ0DOoTf5NA8Qg+4dIs/bqI=;
	h=To:Subject:From:Date:From;
	b=a+EoikruykcUgWHLDIGvz7wJVJVe+Zw8GwOcoJbgrHBBevGgmoDq77sSXPpm6LmHS
	 4A8nK2j0U37vK/Ft4h87Rv8v0E4WrnFXCZTsA/4g3EpyELMcVEkbylB9PA+4RUscuz
	 9X8M865FAO4hVC747aEMObqOB7q44fP3Z6DJjYPyBYkuGZQRwGW2Q07Xk3g5HHSUlL
	 Zg5iuagZnvn2Agjstez7HcYcheebPQP+QESouMccyex4lW9FaxNMEkCOnyQO7wpwXc
	 tCKXv83oy2T4w2B9rozBZQqWnvgUub/ZWphpBIHV33IDNqojlsOUJ2tzf3gdHOzzD/
	 Z42MWlLRaeIaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9152ACA5FB1
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 17:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176892863358.11601.1951338656841463214.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5bd9d114e3a56112022a89b77da489d9241124bf854befcae275bcb376ff6dd7
Date: Tue, 20 Jan 2026 17:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768928633
