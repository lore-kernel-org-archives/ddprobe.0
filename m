Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 264F827C141
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744340394; cv=none; b=XOLqabh1g3AQ0yv9gmxAAR0h5LUCed9J2nUu/RF1rBU6vRvGyIpeBvyF/twwHX4TDJVL5o4xZoBJhIIAct0hWbAvILB0QCrtubNUCHQFiViA/eukOTcetSBysx6agg+tpRHzfyVJSy9Ng0Gja0a2XlUWau904yu4IoDF8dDs+Kw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744340394; c=relaxed/simple;
	bh=0vsuJeALpuuJQ5iIw9Bk7hwdtx3g5INFl4P0ZWQ0EhI=;
	h=To:Subject:From:Message-Id:Date; b=t7DBvskRneb4D3BaL7Xlbvdmncf1QCl9xxtV7g6RzUTviAXbK2fkX2VgG2Vev6pJHa2t8qcu9tN2FfIOcLhnryyuUC7oWZmA/uCL2Whg7r13LLuHFICVBf5hR5d6OA6Z04ROF1qthkMRJpOBFzFg2lyUb5X2qvF9tcTbU3smTDM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HQvtCbbc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HQvtCbbc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1665C4CEDD
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744340393;
	bh=0vsuJeALpuuJQ5iIw9Bk7hwdtx3g5INFl4P0ZWQ0EhI=;
	h=To:Subject:From:Date:From;
	b=HQvtCbbcvZFH/XT1tbW1k/a0R4o1MU5cjImJRsGUbVusRlEaG8ws3yXRb77d2x1yP
	 gfzgpccue2VCdqAnSDjjxpya13jNRH3D7rTlyOYwIlMHoIjrCPs0SZ1sMKWzj8VqUC
	 clK4nTUwMehxPVbyO57oO8wlzn2JGlIhge0UTh1Z1l/fXJSoeIQpMtpdOjRjIlj5iM
	 js+kbjm6c3m2ITixQAdr9eq/FJCCnSsLTskmbz2SoeRVeALJLx1xZfVvCs43Ip8b4o
	 1X1XNzz+w0yFu6dmja7ksFVw4iUrqW9Br+9/3dr5w9OjBwkJ6Aq7uPwIFD4pYjoPTv
	 lHk1BNBEYDHkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 903CBC3601E
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174434039357.2260.22727895101079353.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 142888418ebe490ec12fc4cb3b55444829a7a085744248fa631413ec71d8d215
Date: Fri, 11 Apr 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744340393
