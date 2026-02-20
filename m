Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B08432BF55
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 04:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771562694; cv=none; b=qzKUrQW8BwIiFUPQs+zplgB7pm6TA1c+eIcvu4+Laq9vr0R5ref4GoYSAf7RKwgGzeaR4YM8gWxKSU2A9Xs/Dr6kFIFZT3JOnJ0aqwhQjoT1Yi0vI7BhA1bqA3RgjLIOt1Ll0GXKzYI21x5pUXCdIYnKEa023Ur7WuytdsW215Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771562694; c=relaxed/simple;
	bh=EwLouBtZHPe1hvgkBs41L5efabgzNHiOyNLdQOSJP3I=;
	h=To:Subject:From:Message-Id:Date; b=Pu+52TClpGK51Zk9WO3I5sxQApwtkUwGPDSW8mW98S88bkkhjmAc4lODrYkG5uj7PjjcmC2fBVg6PT5olTeGchCfOB6ROfLls0L+co37bNDF33SiSJ2OCwgKutS7td0flIS5guZEjDwJPhvJvGaI9Gt1Ih2dDHhPENM5llRKcqY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QkyBHDDG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QkyBHDDG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA0F7C116D0
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 04:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771562693;
	bh=EwLouBtZHPe1hvgkBs41L5efabgzNHiOyNLdQOSJP3I=;
	h=To:Subject:From:Date:From;
	b=QkyBHDDGSNG3TQWxzh0E8eMEQFhu+Pe2pGdjLMcCBHyKGRQQW0qmKixVh5kF1o8BP
	 6hHey4N4XBGfJgxarH6YzWbhkq9Vlk6nkf3fTHok0ttfi82rp2Tumi1ioxCPwSAwJh
	 moMgHQz9/iRFBRw8ZtITeT8O8ucsk1PIE5ROU6ZUmHfg/k8S2GHi+/Yw0/pY5s8nKD
	 mEvwyLI/fTNnGWoKLj9uv+4oWZwfal9yDfNiLFQntIzfEtGiw9DpL/kdU22dgj8+XU
	 eJHdhFTPqtu70MRmQ2AtAXB22fRjgRoMBdVhVm2AbAjy8mXyR4J7naOgyaF77KsdFE
	 rYIcnY8k+nxqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98CC8C531E4
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 04:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177156269358.11613.11514431653570540965.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3cbfa1732f4e4d567dd40e27d3cfda702c4b9fa0cda5e1fab0a553a97732ab7
Date: Fri, 20 Feb 2026 04:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771562693
