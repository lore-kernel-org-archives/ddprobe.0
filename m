Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19C331E5207
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 22:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766444034; cv=none; b=FJg5sw3iMRNeSknQYzMCV5KQGoOgmfHI04HnygOd74H+foY+w1iMk/TuP5VT5wBstlqdD7tseFmi3K4ClyEDN558XSfgQZr38VkQ9oIfdKb7BBeUvHmsqsJv+BbSo2U4HBrlHlC8UZg8vHiWiYu6cdnHbOcnCCbIfvQIgpj3Vos=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766444034; c=relaxed/simple;
	bh=zobWjasyZoXSC20e2s1+Ycj9Nz4nEA4fXuRv0Gz4pFU=;
	h=To:Subject:From:Message-Id:Date; b=t5FfK38bpF3aKdH7QXUy0R79sh/d90/05Raegw1BBtRYJ6Vd8zuHl1aM1mjH09A366YoZH6BuCf1l78XPdM4SgIE0RmOcBfjRcZhqtaI26nObq6JkByaCi/X9iq0n2ov/pCQOufXLVHLwoOSJj73fvAoeNXlVFTyyVYYGP9txCk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IaQXlwX0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IaQXlwX0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DF55C16AAE
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 22:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766444033;
	bh=zobWjasyZoXSC20e2s1+Ycj9Nz4nEA4fXuRv0Gz4pFU=;
	h=To:Subject:From:Date:From;
	b=IaQXlwX0F4IefQN23CAPmIF9tBN+1YoIh+BvDJ05kC1PWQamdiBEsdmlaeIApLIgv
	 Chl5RLhAviZxuH4EWIyZrNPHuaBE5WgYvA+d3/thnI5SNzY63Ifw3rbCpwnUAIDuEK
	 oZQGI+0WoiVO1f7qcXBnr/dYa1Oz/ZhG/fU0L8lab1xsl27Nw9XeRglxEZl2yHmFDs
	 TKo9NIrhyAjB1D+pf6wFO6XaVoAciO+AqLxxqrGxG/VfWAW4ZKHllEG5Q1YrglaR38
	 KEAvwBS/J9SdPconsPlA/KX1uGfJTO/gAOU6Q0LQbwyAI3hSbebMtjRjIRpxr5TvZx
	 GHtHf8UyzNi7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF2BE677EE
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 22:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176644403358.29975.13998235268601560560.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b3ead82f9a534b6cb55742bbcdde754a21ff7cadce29bb726fe5619bc1d7bbf
Date: Mon, 22 Dec 2025 22:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766444033
