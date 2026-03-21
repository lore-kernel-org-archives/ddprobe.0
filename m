Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5D7B2848AA
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 09:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774083893; cv=none; b=LVT6UlCC+XhAEMXFoosI1iOWMIsx+k71Is9axXjRSSzg+BkjOheW9v8EoNj1Lj1nnaK0wv6g4lIIGkdYi+PJeGYhu9Aw4ttTBvb2wpJdxhu76253vuVwQY39pcyK1Pfj/jTBvLhOF4WcXolEHt9l36ZWO8XBqiVaCv8Bjg/8T+s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774083893; c=relaxed/simple;
	bh=Pk00cNOQ8kNBpvGnsPUxyCMUxNbbyYn6HBuZ7Zg9Siw=;
	h=To:Subject:From:Message-Id:Date; b=LCh5OF+9V9dVylHTRqTNqlA9ibUfZDz7E3jMLDTmbAmY9YJHzAn2VloVBFLKMEkqVnfzgZEk6J8vkSy+HlcUUZE703pAaHEPaIIA1B26sQI2FD+s5oi3iGop03cIG0xEAd1xZO05cvbWJk8Hn/MdI6sHUCagfxFTdBmSi/0g7B8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MtHjkzsT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MtHjkzsT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7474C2BCB1
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 09:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774083893;
	bh=Pk00cNOQ8kNBpvGnsPUxyCMUxNbbyYn6HBuZ7Zg9Siw=;
	h=To:Subject:From:Date:From;
	b=MtHjkzsTWrzKVH/aYpBCtSRUzImWrVj8etXgZdsb6ICfbZRO30n9d92WwPgwwLJA9
	 Pg2j2OuI9GIToQptZwlXR2RKU9e4ujdcpnh35Xa+u4ODlNFQZZ7R4AXsaDDKP72+5l
	 k3WgSgGQ41ajtWuPkT0F09Tf4BUf2scsaH3YPsJq6mncphEt40LcxuztQCU85yjuLF
	 t/G/ggi8sCcudbY+GF7wnBzfeyQXrlenMbxb9h9BgVQvrddWt0D5napzP30u6nMyIN
	 af75SsAglz0r7qnoRUQVcLQtCoHeJr3aZMg3kW4Vd/v4FkXQEZxbN2D3DqbVRS8J4c
	 aj7DYr4dXcuDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96D311094462
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 09:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177408389357.27430.3233313832331055891.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4477c3543ae99085084b3fed00f67a49049a04542a837883cb8a59fe60f344e7
Date: Sat, 21 Mar 2026 09:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774083893
