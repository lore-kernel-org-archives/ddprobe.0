Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DD3A3B7B3
	for <ddprobe@lists.linux.dev>; Mon,  9 Oct 2023 20:07:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pLpuCQK+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA200C433C8
	for <ddprobe@lists.linux.dev>; Mon,  9 Oct 2023 20:07:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696882028;
	bh=kKaDaKrMBZb/na1M/jHAfLG59n4ySog1spf7VsPWl/E=;
	h=To:Subject:From:Date:From;
	b=pLpuCQK+X5FKjuMhJcXXlUzNp58UeZNllCXA1oh7zuthZceTZLvs1jzkfMNPRY3bc
	 3xlnFXkwR8/BxogZsbk2BloAreiP0h2r0XCMkHQZt0c/zJ2VGwoVBJ1mQDQrvPSH4M
	 67Pq5cdriX4wiOJqRY5/Puui+C4Q38fViknYY8VFEnTlNG2dIJcpa9EWSlXcu+IGAL
	 CayIpNcJpMi4GfP5hUqdiB+BwUCHfuiiULA/KA69XjrZUABNDJuSY03blYU5TIEGm7
	 Gj8NTieiElvwiSGw5hCE32YhpL16CPf+HdgPFXJeUoFmdwjar8OytrSoP0sev1dE26
	 PXM6kGwRBuamQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1283CD6133
	for <ddprobe@lists.linux.dev>; Mon,  9 Oct 2023 20:07:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169688202871.1235.10904863811498817990.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e28d0b7ee6cf5e057cba386a9964539f2a90262855ab0e498d70bb278377c66
Date: Mon, 09 Oct 2023 20:07:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696882028
