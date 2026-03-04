Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A86134A3AB
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 21:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772658894; cv=none; b=lP9NzzOrvgQdC5vDA7QM/RGSK3SXjFhg86aUnmOXUFpPNpcn8ANutwFOjqcSHc3E+Xv0DCU9Tj7TMCFShjDdfbuPmwvrMUJEm+5qjcMb9R5KTobvDPeWWYbHB/Hbtph6OLX6KfkJzglerkOJs6PXYyZnko8BvFglO6ErQNYY3FU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772658894; c=relaxed/simple;
	bh=SgtoAeUXIzZFxf8aAUfoLU5+yVc3bOwiAKwUH3knv7w=;
	h=To:Subject:From:Message-Id:Date; b=gQg9vZa2wKpYhmauGWmJEkqIYap2KGuFdz9oqSc/+aItB3AXK5cpU8vJbX0+7zfcJNwUJc1kgu3fkJneSatXJVI9uoxwI5DOeZjQ7DXhN2/mK3b7lTl6wJKOxdshKHm2M29ips6n45Cqu1ks8y6Ulhb3mgqz8aeAfJOkwtSFVMU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AbWzOrIo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AbWzOrIo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A422EC19425
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 21:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772658893;
	bh=SgtoAeUXIzZFxf8aAUfoLU5+yVc3bOwiAKwUH3knv7w=;
	h=To:Subject:From:Date:From;
	b=AbWzOrIownMRTyl7RvOC4lOLYPtC7az6k06cIY7/dUjwX6XOntt9LfiAGmdrOzVVd
	 QKIxbCcxja6k2spOdSTCrgKvAe3yy6Yzs64o/XJPOP32n2HhZcPfNp8sfGwenuwysJ
	 glcKqRGqRsmWG9c4n4C1GiqnqMjyRg4sf8Gyrwa58ltCK5o9tHk7DnEAE4qow1D27Q
	 0EwUvJC8YpyQJry1/aLdgvkgPD5G5lVL6RExrOiLd6Y5Exgms6G2BN5A1F5sND7nf6
	 urPzpJgiCXkOYNuYpb36s4nXHLHc0CYIH0I1Jm5ltvQ68VHFdEOO+di2juo7Mjpu0+
	 mkk9WMD9tLtPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 914C4EFCE4C
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 21:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177265889358.2427.703870887777803175.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d95b17982ff8d0e6ba0478bd839db09ec2a09f4d97356f937e731e205b207f7b
Date: Wed, 04 Mar 2026 21:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772658893
