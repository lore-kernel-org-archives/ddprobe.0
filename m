Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 565EA23027C
	for <ddprobe@lists.linux.dev>; Wed,  5 Mar 2025 19:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741203534; cv=none; b=YeB04j8CeaG97aWmeljxP4yrECUyv3xa0+fWayR0xdfI3N1ubVvpU6FlkQS6zREQStChYMencQW7+xeqA9/fTJpWd0oXyEq7A7cUZvDe/I1NQTUy+epB0stX3Ih7LPkmw3LbcWgwRZZlgU4RPWcgbB52Bwfi9i0CVd+dVIuoGyY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741203534; c=relaxed/simple;
	bh=g4pqDZYunWmmMz1haXSN1xhMNSbwvnSvuJTnzd+ZbSY=;
	h=To:Subject:From:Message-Id:Date; b=Qll6L7jCHZJDzkZ3FDKYUoFtSxElFKRLJINVYZT/ZcCPimx32kw3nO9uAYY3ucq2b0VnswPGJbnbeeCDj2smGgX5F9kpX8JZWELbq39OfCb7oMaNGCmCjVAgpSMnrhUk1Xrb2COq2hd2MtfYJRaMXzRQ2neBBsuj3faEbgxCtOg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mea2+Urc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mea2+Urc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B44FFC4CEE8
	for <ddprobe@lists.linux.dev>; Wed,  5 Mar 2025 19:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741203533;
	bh=g4pqDZYunWmmMz1haXSN1xhMNSbwvnSvuJTnzd+ZbSY=;
	h=To:Subject:From:Date:From;
	b=mea2+Urce4MiNGlcBq/V0FerrUn1JwtajCMn6YtXKV8RkJMAjAx+8gJHDGF6C0kOS
	 lqbkkCkCkN1pd6Oq98cNQlNESNxVHyQ0dhCKIQ1Jx8s+Bd1abL0zJLAMJuF+Eg/jk/
	 cMnt0D5ULw1eo/OkESHvJ+GOB3yJ8XFT2b83CSK/zvEQJxSZJXHDzglapD12b6HLn0
	 YQRS2tSfb8Msy6pwVG1hpjNhWPS6jqIkQzQX4L/A6xIIjvCTZTgul22AgRgoAQoUC/
	 zSy2EADGtcedUXL27wNPqOzXTCDDTIGfQPP4PQfVUPdziMZummujw5sgvGwSVDisDI
	 BxPpXEGkojhvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EC37C19F32
	for <ddprobe@lists.linux.dev>; Wed,  5 Mar 2025 19:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174120353363.9985.13301367362897637209.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a90e61121a69a99d691c226d0b32e79b1446576705bce0b631dcd4196190b651
Date: Wed, 05 Mar 2025 19:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741203533
