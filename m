Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EAEF8634A
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748471994; cv=none; b=OSc7YNtzisFER8fUSqo4zvXK9wywJhJtQljbOZtGCU0PIPfTB5dDBtEaEl6CU2qJ57LBLDrxG9dgIacLtlUmTBSckWNWtHYSB8MmuaY7shlMTGzjYAtponMlDsimE2Gb+ywQzixxfJkb0a8c08MnkGOnvFajcU9Ekq0lSKzCSHg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748471994; c=relaxed/simple;
	bh=eNOdpP4afy7ggfDprOqA48g8zC/LW9S37ahb0hkAP5U=;
	h=To:Subject:From:Message-Id:Date; b=ftFquYVMTV0qnz98YSfXw33dK9ZAuVgG3HGfixbZSXB6ThN22AK3n4eSrktJfzsuOu6zYsCPsAnjoyb2A9uwHgpwduorUaPYybM/wneWUqXUfun4mB2AF1M4dpgCthxhX2q4kC0raHF5nnkNftocU6HfctuVKv59LC1agtONzMs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XNtW1hsM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XNtW1hsM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E5A0C4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748471993;
	bh=eNOdpP4afy7ggfDprOqA48g8zC/LW9S37ahb0hkAP5U=;
	h=To:Subject:From:Date:From;
	b=XNtW1hsMqeR6M4dzm3Sl5NIdteZv0KwF1SdsuiLgi0Ba8hH5PTfQ/i/1YqbrhqbUE
	 MKe3z8V/8eQVoQ1FG83fo3VNP0OCG5IzgQv1tGiqU4+AOjpplh+B1mQZn9h1cn+FsM
	 it3nX4fOQwiNnXZp6dDz4foaqRqNHIQm7EqZASEeB6DM/gaOd/TSOYhAZgQ8GzwI1E
	 B9sWZCCtUENITFzJfdKTBvAZ3lg1Rt67dvk3ErsAEYKpFQ4hyXDO4sDWsb42Q6R8om
	 tSkPMZL1Y/5uCvau9YnKi3DvuUtCOadEhTDb5Rcm3RULp7F7LTcCf/vSxdfzr/N+1T
	 hMSc0xKoNtdFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EBECC5AD49
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174847199357.8803.10991254518822237614.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e9af748e645b9e8f9a1bfd4cb612f1bb8e309473089ca5bbbb0a89791f60431
Date: Wed, 28 May 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748471993
