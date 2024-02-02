Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 286C18060D
	for <ddprobe@lists.linux.dev>; Fri,  2 Feb 2024 21:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706910497; cv=none; b=qbSAnH8FdkspjEgl9Y2XHYXYCC01T3J94BthfvwOk3AuNPPC7Nh/qY1aQMVI3/Uh6I+vXiPtboEphfnsD7Mm/4ffqF7LFvY9nTzo+d6ymjjLbmINJJzHtvtjA7QtbuSKkXRNg8sWFBNKFtaCX7DUxIbzdxV0M83BU8Q+geCxeW4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706910497; c=relaxed/simple;
	bh=wbLroRj7AtadBswsjU1e9TqPe9vZunZgXDKRNIjCbYU=;
	h=To:Subject:From:Message-Id:Date; b=u1C9iF5ez2m4/ESvccf1yFCAlpQrhe3fYP5cfvPuP0rcP9aC8eL7Zbjn76s272y3d4hIhGzt2wTaMuO+1JSwyYPeAj99nY6ILSUsGMPRxmFYzijGrF+IlIPMMHlxB/Cq8fYhCrYzyUF+Sv6C1t+9WcN/ZB5qHRA5d8eUDSfyeOo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eAY/SxDT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eAY/SxDT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E664C433C7
	for <ddprobe@lists.linux.dev>; Fri,  2 Feb 2024 21:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706910496;
	bh=wbLroRj7AtadBswsjU1e9TqPe9vZunZgXDKRNIjCbYU=;
	h=To:Subject:From:Date:From;
	b=eAY/SxDT1dau7TsUak5hvusgts59gPNccYVj5CP+ms/t0M4DaPLIvqxFJ+5OlzN9f
	 pDSg2VX/ExJrfh1auxp7n7BVaQb36rmh8xPrdKuoPYsCzckNcwhvKgaL+9iXYq0tqZ
	 DoiekUDDf6zCZ8nKlUf3q8VE9V+BcNPDiJkoMvGqP+4dNM3yGjpo3Jx6pNL1+fGk0+
	 5Zp8M2Gg9zAEfa56hi2XgB+WDbdhzLFfAnFmT4SABeLxorEv/oTbWRkvOO88tTVT/6
	 meF/6Qdd+cu3h5TCYWcmVonUG9QWtQnC1TpW3Qi8qMUCW/ju6nwM+wiJJocFHaReQ8
	 zQkpWpOU0zO9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62FCBC4828F
	for <ddprobe@lists.linux.dev>; Fri,  2 Feb 2024 21:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170691049637.31297.6105333843147214347.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e66ace23d64d9fbe389209e8127e75d946013b946759762f45f8c302947a8848
Date: Fri, 02 Feb 2024 21:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706910496
