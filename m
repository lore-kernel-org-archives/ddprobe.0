Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5225F219319
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756079394; cv=none; b=K6OJWrSjETVrX9u4M2pDKQJrR4hqXP/vZyywqnYOOASeM5wbVnLSas9TE9s8InpLfSMgssKYHsLaTVBZZcGXiSGh3lT/Ud1AqdCguWVNFQrewQjj+7xXaTTAcoTxG3+PaR9l85Jl0dfnKcEZH+Mk70RJmcZ/aFlg6Gd5OplF4Ow=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756079394; c=relaxed/simple;
	bh=AsmL52J5LPbhgJkmjlbYe8vDT/pwO2jUELwKIV5kfTg=;
	h=To:Subject:From:Message-Id:Date; b=q9tas1fJjSDqXBuymJWUxB8eZpUIDThOmWSzuXEFypiXNR7O6bvMEgHNcmbkC4yTrCR5JO2wi4CJrUBJgnjcukVzAz/n6z7nYgabvY2IiAlYENTxP725/Z32lQyF5887GFqwd5YWikJwRV2feeWk+vxQJRVjEeUYqh8LT0DQI/E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KBQpx3Sw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KBQpx3Sw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A888DC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756079393;
	bh=AsmL52J5LPbhgJkmjlbYe8vDT/pwO2jUELwKIV5kfTg=;
	h=To:Subject:From:Date:From;
	b=KBQpx3Sw+wUOFXUElCniVrru2R/qb4StbPhJR87BnVTeaHjwnWRiejMlRX8sq2cGg
	 g0E6vrd9xNg39R1dJRR9NF4aXglbbBMu3VIjwhndv1wcYRVBLPyUA0/2GTT0mxNGcg
	 ZU5DL0jVBoNih30Cp/bpm0muZYCZ7e5SA2g/xK0SWg1cJIss8imDpLWl8ru+6G4Z29
	 0yDYqEzRLWRyURTZ4DgDWiONTvckHkQbzZxCZ2k3hZuJ8CctRmj+kj5Ix0wNH/Evok
	 YWp/J264Drom8dA9bwzTuaO6W8Cjm+dewpyGppwy5uFLYepLc9RloTuhp+xkl3oOnV
	 sVnES2yOg5vhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94442CA0FE1
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175607939358.1709.5670847195341607532.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed21b37521a160e151037883744c80347bf8a398ee8430af48cfb70a096d3207
Date: Sun, 24 Aug 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756079393
