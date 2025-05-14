Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 300BB2206B7
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747256394; cv=none; b=clc4gxzs4clVWwLU9ZtMvog4us753n7J1THGxN+mrWNi59dcgu5GDYmJLTzt06aCaAXaFUBNlEIIcYcjtBtSQJmTRgmXH7W+qYHXGFdErnjbY5SuQqfg2vKcuA8GduHlkAY7PFAr/ebEvoORkstfx6xbgGUrgHSTi6Va470d2rk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747256394; c=relaxed/simple;
	bh=kh7iqwCuHq2+cjnYjHAzlzwsIT+Ng4lbuRaIadtRrtE=;
	h=To:Subject:From:Message-Id:Date; b=DLglI86axquXrR35ZRIwhqN/sHJoEVoHWd/zuUyv49S1DIUyWgmXI4zzWd+k6vVc4PfcBMEm9DKEIYYtIz7S94Alhvt6DNUEsJ90NnNTF+3pIZFa3k6O/Gs1QmBrqnIjj9iIkCjOq+5HayZzQbQt+ZQonnCT/eqM5lleIT4y9Mo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nhnlXDf6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nhnlXDf6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A23E4C4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747256393;
	bh=kh7iqwCuHq2+cjnYjHAzlzwsIT+Ng4lbuRaIadtRrtE=;
	h=To:Subject:From:Date:From;
	b=nhnlXDf65ZNIzcMZcd2Q6XFWXnp+5rxj2FHa5M2uXzWGSGvEpWTN1wL0eZ/pv8GEq
	 cxpNnEvGiELyWUqWELM5nlwRiLGFSclfkbPbowcwcYJiRyWPkrBlRIiEABAYc5WAIx
	 AFCuGiN4PtfuX9iM9mlXg7CIkNxP+wnLuplVrxf6q0iLYpRt5XWbW2k+M5u9KUoe8J
	 36BAdCFZhNveEbP29mw2r9tBEmjtQ10arggS7HN5ZHbsAS3CY39ujxBFguFcYsKEAE
	 mkhYejwpuggFXpzBbzkklsQhfe1wuwVsD4eyHveFNazp3CxBAdtSr81jtjVUTiOiVf
	 l7Fs3DMCvaPFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE1DC3ABD8
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174725639357.12729.18414952718771605747.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5970cc46e0e5da1cee83ff1a87d4586eb6ce3304ba9a73e56d51c207797d4376
Date: Wed, 14 May 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747256393
