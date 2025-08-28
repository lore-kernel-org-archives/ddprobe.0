Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 207C425A2CF
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756352394; cv=none; b=UVjcwKdBY+qWtiENRVkh0ieI96eOsBtw0iUKTX5Xx4cHdhFxCmxs0y8fLvgXeOkMuUXoxeENHc349W6ozdFE0U/cLR3w0VkFyhfnNGilshJQx4o9FVvvnSiIjTv3KZmX3mOp0gh5kO8nY7qvQU90YJN5CnLfDd7ekz/Tf+7rJ70=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756352394; c=relaxed/simple;
	bh=d0RRP7EJdrAKlM5jw6IWKaSCG2jaPbQ8fJPEKwlrVmA=;
	h=To:Subject:From:Message-Id:Date; b=dBYj+KCiX6BCaYlpyPLITWnIOHHozV8P07CGZnMLzz1sd7YY3XfszL+6I9KoZp4IP1L4Gt/ZLpvp5X2bACqQ8n9gXCCajyKalPihIOhh2nzixEieU1oQdtg7lM0Dl63c9j9RWUovDDECdw7OGSEuz6g2PAetQE0y/lUAeI4A/PI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jzz1f2Ak; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jzz1f2Ak"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC61DC4AF09
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756352393;
	bh=d0RRP7EJdrAKlM5jw6IWKaSCG2jaPbQ8fJPEKwlrVmA=;
	h=To:Subject:From:Date:From;
	b=Jzz1f2AkMQR0AhVoryfDcmtGKSbh0PNri71RlRnLVi0bSA/LbzLtmhhEyYmCAzpQa
	 P+JrNo4tL8CgybTOhH7XR3PggmMzLU7G4iqlFQVOKTQVAflAcZt0n+DpbeqmCILf3J
	 ZiNnzIaEjPbo9yuNW9rA66rmnYkGiBlTvrV4bQwzEmEXMn3DBh8kGkwnQ9WOHmq1e5
	 Yg+UKZ1ok7sie31d/ubn2XVbZ1gi2P7c0rNtz5vBaAX6QmCkSuMzPK9+F3Q9WS/afy
	 Rw8/N08axDmDRchZ+H//ycdhc4j7mw/5Cbepsyj2WJIka6nVdwAmVUwdVoNcRndgV/
	 P2sVblQLbkWLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BACECA0EED
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175635239362.7677.14938151454562553087.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cfad2d08ee3bdf398fe0a92af1222f2f83c8d56a7265955371c4255407428fd4
Date: Thu, 28 Aug 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756352393
