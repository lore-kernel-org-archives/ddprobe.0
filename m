Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 696AE637
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 00:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715992943; cv=none; b=ruHcdnb+s01HVr5DVZ/nzMd3IvF5pkD2z4TcZHLGRRIIEYCPMm0UBWccZbiiV9YIowHRkCUzf+gVDkylK5cbXcwGoOIL4EC01v4PzBzKgpNUVKAvo/SEYZFSNMMrnjgAR8sMWyoSfUR0zzzBTiNPHWrpP0XjIqGbepBLhImnJMs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715992943; c=relaxed/simple;
	bh=kR3WvamTmJAWCQFJDvWNXwGEZ/2vmWYtm/Gb0qQGMEs=;
	h=To:Subject:From:Message-Id:Date; b=cBiVyLMC+3JFqiFByzRPkNhv2zC7p90/DB7iZrlxs0h9K1HJEtK//n+M3EY7tQdaDlcBT8/P3cfQdy2Kw5U7NSeYXgV2N6Tkb9EGP5rYbqDS4dPMmHYV23RgaGUGc/KYbPlYu9A2ShYVBFk8PeC53czzSq4p4bREr586BzuGydg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qPwFFx+R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qPwFFx+R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFBAEC2BD10
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 00:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715992942;
	bh=kR3WvamTmJAWCQFJDvWNXwGEZ/2vmWYtm/Gb0qQGMEs=;
	h=To:Subject:From:Date:From;
	b=qPwFFx+RIWmn6MYevxwavsV3AW0woCXOuemxj2NvB6UGQf32VnudIP2hAC+TBwBE6
	 ktd6MmgLnLnHI1VI/lsyyF9GRMfSTdEF6RqACla417O+/ILHwo63FS3SC+mjGAzKxI
	 ZrwVyQk4kALdumcFX58TUVmB6kksfuiBu+YSKVQq0EaZfzSpr81aNMpxJrdweQ8qMI
	 ZioS7yCXLeI/92s0SDQdEd11pO7Ea9LuurWZYIoTwl1iii+n07Yb6q5WeENoMHOj9Y
	 obGQnd63RsJW9S/KKNuZpLxkmDsXWDEcmCzYnvsut7sJehdKto9IChXKGgJ4ltDf1b
	 14FCFKjFoW31Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE95DC04FFE
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 00:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171599294283.21129.12756644223730581568.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2194427c6e4980cef35e32af32c6e1318ff504aec6da0038d0fbfc23cd1b0a63
Date: Sat, 18 May 2024 00:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715992942
