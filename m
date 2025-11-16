Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 207E986331
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 02:50:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763261454; cv=none; b=hlaw8lWYBrAt4mhTz+/mm6VcZABkebPLKXaG7VKf7AlL81/YgGo6ZChoK+F6PheGcVhe5Kw/ccPSKwxJhVvKj6cn49Da6S58Qa/jG+jlfKbtUpzc5iHi4ftdLRHnEr5ZK71MeHSI317Rr9S6EG9t0tmQW/t/dnxRDr7Kay0qRm0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763261454; c=relaxed/simple;
	bh=Eu/zBAUpgw3QvPwHE0rwBHUWqVlGUsgPFWQH+CERYqc=;
	h=To:Subject:From:Message-Id:Date; b=G/ZUAfyUPDcNm3DUvG6wiC7UhMN8dxorgCsnfhFHVfdCcB0u1Zx7jt1lTafbIXbM/Rg2yr14MvAsultv7ugT6GE/1w3zxRjkFCjzLJr7sdGWWfb9JEJXVnQJpBP/6WQ7r+iw7OCwqyPYVuTxJSzfd56of0AvmRvQ9E4agTHM/kQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AslrF0Ir; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AslrF0Ir"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1E8EC4CEF5
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 02:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763261453;
	bh=Eu/zBAUpgw3QvPwHE0rwBHUWqVlGUsgPFWQH+CERYqc=;
	h=To:Subject:From:Date:From;
	b=AslrF0IrIZfY7QhAw0fyJDEE0IXOcCsC/kR8DRLfYWgI80oY5gKoqltn20TqRtaCg
	 CgD5MAuNcQIEEC77kn+e1QBltWthvXSNhKKrnHKJ18+HfZA/AlYkvfb4GVP9QMCJSr
	 L1SBT5Jba34GYd+RbPEHHh9YdYRS+sQvfzLYhmJmRB+PlXOtYhjxhMvIpb9ypomhIt
	 uZVtbTFESXq+CxmpoTYabl7kCVjf/dd1CAloeOpP2iwPl9IKKyC/vvVpmwta1fmmsd
	 JmWiIvqijXFtipPQx0FWOqLOmEopiYqRGz9SCfYHMuobXmmnJIKfUvGZoCE62WxRV3
	 0cKghUxHSRDSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 966A6CEBF91
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 02:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176326145357.5944.1155484069094008577.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92896e416499e5ea83963d88fa4be27a46db3c97520574aba5ffa14234184740
Date: Sun, 16 Nov 2025 02:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763261453
