Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BD07EC2
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 05:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738907754; cv=none; b=nTuNaWEPu4d/mrdK7WfJYKZwDS9lK5dDKXn5G5+0zX9gH4INHtHKsuZ6TBuzjqO5Fv96uDe1Qd0IUs4vq4a6QFJVXDtgVOR6guNjo8uudDk/fVyhUMszeEOAwnas3Ed0M0u3O2bMc76WoFMrG0JyFgx/S33+Sg4MWtFaM4lqc1k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738907754; c=relaxed/simple;
	bh=81rwS64+BsFlufFFM2E7qOONUVq3y57aOUlbByQJqtY=;
	h=To:Subject:From:Message-Id:Date; b=bPz5h9dzV5Tw7U+VpxnyWfobfLPZ6EqeKd55a7BB4wp72UaJylgCwiRnZaVWzUjVumYX9pviOV/OrbyL1v6o9sFQ1tOVsZGbp7WJbXfgn/67ZiTWylQDjFikRdF7cPBDNYsd8e5tkSIkXe1CADFnw3yZS2QgK9juRIYDEvu+/VM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lnVXhV6M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lnVXhV6M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDAE5C4CED1
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 05:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738907753;
	bh=81rwS64+BsFlufFFM2E7qOONUVq3y57aOUlbByQJqtY=;
	h=To:Subject:From:Date:From;
	b=lnVXhV6Mfvi91c4u39jSiHSwP55wNwhAIZtfLk92Uzpd65NsMnuALF1FHiLq1WErQ
	 kgN/llwhL41h3b3Oa82vn//3VR4Rfz61fWltbuABnP/8cT+FbuY99Wp/GnqMLZaMF2
	 pZwW4iz2kpzhxczbjrYe2kxx5adwFPAWIHKQpmM1rM/X4qeDvJgFoYvsEFI8aQ8aVW
	 BD8hjcLjE96ESY7eB29gR3Pxm6CpkIVg4AZ4pFBkbsSoRnchLXe8jUH1Jle7llUQVX
	 IZG0t4un8MjPx5YTY2+WsoaVqy+udjzo0QZJCNePUDK2BkbEtl/rJsK4YbOK1GvjS8
	 k65kQQw3cP1PQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D2DDC02192
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 05:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173890775363.23868.1713059987531684104.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f89a67339eaec132dee255e3cb522810ca24a0e157957ee648dc75fd67d2bfbb
Date: Fri, 07 Feb 2025 05:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738907753
