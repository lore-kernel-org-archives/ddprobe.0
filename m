Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23F74199931
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 22:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779055234; cv=none; b=KUzfMwz5DlWSFF5n0YP9WJWhIB2RkOrQ70+Y3+CxamvXhO5wXSA64l3fl27mDaOq78CryYqeDE8nw+jJWjXMbB/1gqGE1AdOamKs5EPpPMQz0MTIO9XYO/rR7NBFhuRyCCif53QxCxnZKoL00CLpYCsA08N1OSzOThm7u4+M8gk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779055234; c=relaxed/simple;
	bh=y0rwcb4KU8tR0yFVYnfe9ERXUkD/eA3NyusJHicCCco=;
	h=To:Subject:From:Message-Id:Date; b=lq+Z1IHKeFLVUe0KIrcWWDQB0wlOptwgOAWuiU7vooG5K28WT9UYs7YwcZw6BzZTLy42uaIuqN3MmlwqPTGKzl8rvgQyAr3gGpBWtRYqe2uR7zaeV8uU7Npr+SMcpRCSSWtWfWkQWPNBRPn3tDIPQeaTacDEmRb4cQqAGx5AkAQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BEA0rMEX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BEA0rMEX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C438EC2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 22:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779055233;
	bh=y0rwcb4KU8tR0yFVYnfe9ERXUkD/eA3NyusJHicCCco=;
	h=To:Subject:From:Date:From;
	b=BEA0rMEXD/Zif9iWuV1AWmUugNctBOkyvVYkU60H4IAhdDuAZrpjsd0E5poVtEFbZ
	 VY5jHXEHEZlLha5eckCHhKGwSTQkUVqR17WHJzQMRfavdj2Lwpq//4O8bgf6fIKlyv
	 KfwAHh773f+htUG45XSXBC9lUvbic5rjOWgr18Ic/2ioPGgec5MaLTtGqrlOmWzJsk
	 JqcL+CB/FJbuS82BcM18Tn/mWB/TKel7AShECU7zweDcLVC0igocNZIMWpj01kNDX3
	 3CBEsVptynB1lWOjRyyFEZZ3eUEeYCrziXLDcmsedvwcaDYFqrC9xvRvh/UeD3Fn0x
	 aw+wUlzlr19vA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1649CD4F3C
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 22:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177905523369.13337.9754905333263625938.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3c7cc21d6c575e8e2a4b3f0000c71eff41e510f62aadbc73652cefff816332f
Date: Sun, 17 May 2026 22:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779055233
