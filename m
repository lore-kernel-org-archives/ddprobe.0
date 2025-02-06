Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AC7923644D
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 14:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738853154; cv=none; b=puAvFhu6AtvVLdHKZixK7snPGXgPLvNNY7x5KpXDrQGIboWUJ9XDQFOa4HPi7bLMwnLdfosk1Y3mB/s5r4KGRzyV/WD0mQqbvsN8u3tiPmZOy0FkmQ/1W4Yr+o6LzU/Fvbbu5r0sTou6oTcD9b/BFmrY4CJRw7NffSe4pGJabWU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738853154; c=relaxed/simple;
	bh=/TqceEHlpNBWLLChW8gdq/QjcI/SThlmjif1JrTkoZ8=;
	h=To:Subject:From:Message-Id:Date; b=TvTlm6tFGAkGsLhKUQ/iNKcp2L3W2Da/JpiJhCp52AJz/WGDNrt/pFcRC2W2fgQY3BmCmNBIUb5aDWQ5YotgAvwfzBJG9Zx9Z1+iyJDknz87ZVF7UsnBCj4+0778pFTFJ/pW8C9+qxHAjEsawpGOhfZOnejBNgeWeVjvXUYYlV8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZJbawUFV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZJbawUFV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE11BC4CEDD
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 14:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738853153;
	bh=/TqceEHlpNBWLLChW8gdq/QjcI/SThlmjif1JrTkoZ8=;
	h=To:Subject:From:Date:From;
	b=ZJbawUFVg5PyX6xZdSxgH8KD+eb3DtBK6Y2sO6aKJXmKQqWkCcLaoIC5gvkOVcCjm
	 3xU6LB/l07Pp1WI11nxdv7EZ5iqnR1a0h1Vf/jKl5ZKemtAvpIopfrKV5L/gqM+mP1
	 nrf/o9h7pCbZURsPVOMfeEpSk+VXDoE0hasujS5KjtLCbrV+Ls9Sotgzo784dcIkoR
	 c5ZVMfR8C83BHjf2VcTYfxF0K5meumzccaYT+8wADv81yZsgqCKuihCFDtCzLRu5xq
	 yQkLNsgGhC89Sp2IagdP9LJ3/n3gkA4WWwb774w5kob4b8RaDvGGi5eL/6mczLR9PO
	 y2Cgjf+Qngd/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97D5FC02194
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 14:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173885315360.14568.17846496350450785424.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8dfcc27fe2f7362f6385732a687374ca5f87b500e932a1db0bef7368cd4ed434
Date: Thu, 06 Feb 2025 14:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738853153
