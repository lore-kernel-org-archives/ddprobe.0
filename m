Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F7AA335066
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 20:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787690434; cv=none; b=hrFbmHEOJa076gxlUrJCPFgT3FhX+zyhizhq6pk3GxPEXOe6D/z+3pbtpQbnS8kxkb5XjZIkgvJFdPc2SNoi3rcyApYlTXcn7RFMEn0SASP07sank0OEz4NZnvfYWSu/SyxMrTLmWScUvpwHxQ2rPfwpWelWr1ImE65KzB474OE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787690434; c=relaxed/simple;
	bh=JPOnsF6QWE019vemK2qkOsMFWIEe/mK2OJv+gPKL5X0=;
	h=To:Subject:From:Message-Id:Date; b=MnOsl8vjwugA03Wn+aaZd8GhhaDy8ipBL8+LdWDr8lQYrc96sehUja8jtKHSIcO3KPqMoEQG97dhGCz5PgA/wVWj1Evn2ROjBglAxh8uwt2seO1ILZ1ivCQYYamE7f8PKee3CmUKfWQGOUfS59b+UVb36D11nK1/eRP4JavjX3M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a7u9a3Dh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a7u9a3Dh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1567C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 20:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787690433;
	bh=JPOnsF6QWE019vemK2qkOsMFWIEe/mK2OJv+gPKL5X0=;
	h=To:Subject:From:Date:From;
	b=a7u9a3Dh6bep/Gzexf6+GiJ4ol3ANCoyJSEZoSA9Aiw3Uhlnm4YBUJCu8XdSRhaXR
	 81fjZDvWTl1bRSA5/UJsY2rjtWYRwb94iHtQi44eqwuE/debHwJnYciFIU87C20Kly
	 NbR7/kpUYGLS7+102N3/UEzpPQvz1xg7huty3XyFaeK9J1J/K405g7H1/IOmBn0qSe
	 5+kyMNSEY8LoS2+B9jQg0EuHwOAfV1O6hd8L/DvGpaaEfYH0rjlsKNv2fWWAlxrhXr
	 ijN0pnrrh2rvQYQWwumRodhmRAujpf6YzEimqExd1pZinkyA1AwiSFQWp+FmJ9bd3e
	 /adNJJSJRZfQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE0D5C61DBD
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 20:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178769043370.18107.3503178779898483074.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b302dadb069aceebeda7782874d98b9c22fcd18bc160f5425ddbd1ac6426cb1
Date: Tue, 25 Aug 2026 20:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787690433
