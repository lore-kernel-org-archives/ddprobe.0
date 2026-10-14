Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B65347D44C
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 10:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791973834; cv=none; b=M3YJeZqji+eImokP67z6h6qRSlWQ8MUZay75SB2t14m3gjQkiHbyXMW2NomiQweeJdJ/vslN/asbjmAOY23uow6I6e3EM/AEvYInagKhuPqLQCw/ZhuSVn41l8xJlfJd2ycA+Xa2xvJJxwu3FZd1dGBxo4WDXJmskPjEF/n7YMU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791973834; c=relaxed/simple;
	bh=BEfUgguZ6WDpqgbWLLqnSTqzOzmBkAzh5zURRuxZjL8=;
	h=To:Subject:From:Message-Id:Date; b=BWTReHFowvdz4LLbB4R+hwT0P1COj6V1ByPHvjKCZTkEo/SETngN2VgqKgEXjvtwIgsDcX/3KOn5DdWzN5qt1MWCl0YIJmErUkGXQ2e/Qqen+QMQOAv+VEv8Q+tt6qAhXZBHsWuMoKwGRs0oR+UQeqrl/k8Kigyzh0oNFksA39g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qX1NOkMl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qX1NOkMl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3532C2BCFA
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 10:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791973833;
	bh=BEfUgguZ6WDpqgbWLLqnSTqzOzmBkAzh5zURRuxZjL8=;
	h=To:Subject:From:Date:From;
	b=qX1NOkMlrDuDxDbch/OLOLhXIDhOb7Ml81tn5QDGiHGTWJ4JgL3WYw4Ef1J+Fp1Zh
	 9IMW43C16Em1c/Zd8kIe8DHl6sIOLN1dKRK2/qkYwAJOtpNFlEI1NWqpXz/qvA15gr
	 7dg+Omt4Iq4Bjfo//qGXpPAfD4nwYAUZae196XxAb01YcvrMojR9Z+Q+NWYwlqYUrx
	 NzqJ8uU7pJhzATvn2SbCg6Y6hM/8q6F4+vErQ4jlAWt//cJAmEHHeU7JTPa4HtT/Wy
	 5ndwlj+TClfBZwbQAEPl91+vjJSyNONpEC2drVZTyLRYfYAk8psq/E/ny0kKDRB76p
	 3JsysyTNfhhIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD98CCC6B1D
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 10:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179197383369.21577.4004396008763078062.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: afaa6513709502b0d53af2634256f909597e6acecc567fa4035973f411537ef4
Date: Wed, 14 Oct 2026 10:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791973833
