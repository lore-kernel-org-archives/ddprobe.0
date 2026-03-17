Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF36236C9C0
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 09:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773739493; cv=none; b=q0AlsMkbHuwf/1QmQkLnK8yCHwzY46r7rKTwMRxvk1w00pPhOo8ZKzCcVNUm6CHMEr9V8fVEfe7+Yg/981q2dB29zNLdxHyezgVJUtmlzD9Y6np0+SR6OFNH+zAFnVWn0bd64rDFQpJbobHAOD2WHRTObejhiefBtrP327bDCUI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773739493; c=relaxed/simple;
	bh=xH4przI+ephCfgClTSzR8uYHMutnwn4+BZGQqNp5G3Y=;
	h=To:Subject:From:Message-Id:Date; b=K7qzH+bBrj1kcmSzlEPzP0EBcUtK2GTUzNq+ps1vA3opr/i62jFjKnwSr9HMgOEPu0jQ3K3NS8v3WOHO04H9mumpALw+YxftNftSYypQAyew2XJm3BJOmSJ0/iBbvGzM8CMvlD/MSJbxdPadwN8lVtYs3S0zLnArvYEiX/jjdtI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B1lfp/cn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B1lfp/cn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C9C3C4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 09:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773739493;
	bh=xH4przI+ephCfgClTSzR8uYHMutnwn4+BZGQqNp5G3Y=;
	h=To:Subject:From:Date:From;
	b=B1lfp/cn2zob/684gEEPa69QHQE/si1Po9tNVkTPAPmMePKII1mMDLBr5rwiscHcw
	 cVlgINCFzGkkhtFnaJs+2V7CVM4QZ+KvOXHT43KwP5jAPeaekHs3dsLPg/WlkanAoe
	 ZuBBFY1J+LxzWJ9Nh5gCYqbQ6Ii64h9Gnel+Js9+aoRu8iBfsJCbVnP8zQWkQluBXV
	 /y2hhexAn+vjqkZT+QyZPrKx6iZO4CnkCM9MIM9yBZ5ld7w6ShAkWMkpG4agWZnfhL
	 KXQ9hmOvGnVVumZAqYIZFnLezdeLbxc6kA3Wa1QrOvgPxihJT8VMIewv5hTXsLQ3oD
	 ReGWxKArPhnZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EAD4F3381B
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 09:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177373949357.3123.4986370757352103385.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd5a82d3756690ad0b13ceb9d55d8cebf789e44fd28fac9339c22b3b8f6b1883
Date: Tue, 17 Mar 2026 09:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773739493
