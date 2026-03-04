Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A1E434EEE6
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 17:04:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772643894; cv=none; b=mjadcHe+IPbiW3CM5L2hxFZ2Q6uPNqrCl6N8LnHFtjrs+/JjuqjEFlI/paLYzQiG4fjuZ7fAHFflhJE5cNdOr5X345LsTWUZviPEJwgzuPGHIxqGr+wd069+1qIR8EdieSra63zYzVJ1b9z4r5GK9DXd+6AlR+WxJ+la4AK7Xt4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772643894; c=relaxed/simple;
	bh=9Fj10j7HVfK4uDCJHRkgsvElIVNdVL+b2STTfagm9xQ=;
	h=To:Subject:From:Message-Id:Date; b=sE3P4w3nwOAGD4GIAs/GGYwBb9k0om4pELd55QCXZDmx6yi52Ths/cy3qdGMNGg9I4/gVS24QKWGIWY85bAkLZgbjHFuc/ig/mkPY5v3l78rwCSX4Aim8OWH62oVpHzKkBWNI/757jBbCVwEmKCdAO1QCs+QeQ9ekyNvbbWl0sA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ga9QIwyg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ga9QIwyg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8B7AC4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 17:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772643893;
	bh=9Fj10j7HVfK4uDCJHRkgsvElIVNdVL+b2STTfagm9xQ=;
	h=To:Subject:From:Date:From;
	b=Ga9QIwygnUVyTxNqf0ftDtDpAkY8pXgr3J0dcgWc/20borfKHSHwo3GaEkQ7C01nZ
	 CQZeTplETXMIohNcM4Uul7/IhBeb7Ng8tvtsgOPNY7nsAlzSSDAZh2oP/53lLW043R
	 rqEU/gTD3mK1M6BtL/iSpQHwNLKQLW1jToGn8Oq8PDdBAWXs5VjUfPSUDAQ/BvCigm
	 gKqvNdqzddD7oL4PbEgXWVAvWfV0q+gJJjL1fjITcTx/mcGoYK6h47GYw05PfAtcy1
	 KrUMH3oxWI6eZGe/lm7qaaguG2FyuoSKsWKJCOl8ktZ8pIW/Clp06pGWpCMZBq26Xd
	 3VBnHI8fN8RbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF327EF8FFC
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 17:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177264389376.5466.9487091759169429804.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9831c98e6b21f74aea997902b1a043cfc5ae40a89cac4aaaff2e8db8faa9ac36
Date: Wed, 04 Mar 2026 17:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772643893
