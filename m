Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C12814B1E5F
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747511993; cv=none; b=SLpb3y+GISfbzLVFQ5SZbQrucmByt19piDOVKUuIC3MqCWMIx5WpGFmTxSOyw6EsWxjvHGI6UVkrUdIq3TBcbjZtVZNOCscrfvDXlMXDKDB+zXz5+JqBkLNvTanYHugWFqE5gC48GqPfSbKwvN8WEnJnj1LY9zilwjxkrxViT20=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747511993; c=relaxed/simple;
	bh=ZXslELpCjRgpaCUezxb01sdpsPus0qXcRObl1DQEYEk=;
	h=To:Subject:From:Message-Id:Date; b=GabPbFx/qLh1oWdiOcqqf/zeU/eoKPuOyeWAx7YxHL39ErpjywJYJTvJveJlgIgPHGax751KhcAEJUqQjHc1kc+oQyo8fOZpWmNykSg805VmoDy2Bt5WEcTLWxdTiCtTwUbZbBAS23TZkGv7YW5t8wyE8bpwHZSD9VTvw+bBUXA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ILtqbthM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ILtqbthM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A143BC4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747511993;
	bh=ZXslELpCjRgpaCUezxb01sdpsPus0qXcRObl1DQEYEk=;
	h=To:Subject:From:Date:From;
	b=ILtqbthMS0GLfOisB/64drnplY8lY5MTA0I0RVJ92ITGN1D0jYOVrwe9hxK0xSMAy
	 ETwiepF8m0/A9S9RuYZIRGY6ICoiJBPAd2R7oZc8ciWCJEGKJ3CDoaVCFAyAcqyB9s
	 Sr6az/y+JGQn0Bainj8jbyMN6sDzAJjQXHkIOXGVnVDISQ+kdgY70LJyd7U3IY9Fey
	 /lnhCTkaOz6HCCEMn7poSCuLsJNU/HHJ8aB1TU+P/nDd6X6olgdm9FndQIa9OV7a65
	 Y+K0I+VV0O3KxseOGhVV5jizskUYEu5iIY5zmD9PPHx22EYrYpaF/atBpN9YOOOKKr
	 7RBH8g1nj8qtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF2DC3ABDD
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174751199357.16158.3924237791357240784.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e9cc313534651df11f64a060e978178dc7a968f805144816c042a013efd36be
Date: Sat, 17 May 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747511993
