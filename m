Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BFC5331216
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 21:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770327234; cv=none; b=OeTOpx8vWagWAx1mkhR4ebyMwHvEYxcnptwNJMOmuLdarMwL5NhwkEqYTenYju72QOTO0GNyeO39LF2e+4kvUvHHPOLq3x3WqB6A+/WWEyE1gi8HXj+tVFrn5zImXHz0eWtrDB9iSz0Pwp+GRCSgYN6BVkYo+/hQEd5A3p6nH9U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770327234; c=relaxed/simple;
	bh=wDodko8qh4NakNTcu/PjQ6AikPT3xU4qVldFU/aq/aw=;
	h=To:Subject:From:Message-Id:Date; b=RuoWcBCrLU+tqKH9U2voKFC8beFVx9QUJpKOmy33AE/RGFB7AeFreVj+WH+DlDbXQ+aVcEWUPSTSmgLGKOdGokxiEOGZmM1zwgv1KPca0IDi6uH0jukU84sdMkK32Mrai1n22A3gEnMdmyuai+L5lGQ/EjeS59oqVVpY+9Y1Gp0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZjC7OBdH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZjC7OBdH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B654CC4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 21:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770327233;
	bh=wDodko8qh4NakNTcu/PjQ6AikPT3xU4qVldFU/aq/aw=;
	h=To:Subject:From:Date:From;
	b=ZjC7OBdHYojLUc8y83W2C9Dy/NL2kinKtVj0hVj8Z3nwJDWOlm4TL1VsHbHDKy/CH
	 3ARbs/nQymbYmE6X/1Ib8U02tjTjCrAjPOkj6Pomkxwi1rz+g94Pb/BbIzBZZGbk0X
	 6hJifpVu8Oh8//j9FoGNKnOhe4fGSn8Pc9fM+gC7kLBPAxfiofAeL4iO5v22+tp8UL
	 pHb2jqOtJbjIDM1aGrzIrNlhD3Q2CaZCtoE04amoXsa6m8zer6Qb9H7RrrLozko32X
	 P9TBZiICY5GEtifChrul7LLED7FYtm7Uw524wnSyX6zVlDibAiL0AeJpUteJ/yI06a
	 BsOe1H7SA9a/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A075AECD9A6
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 21:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177032723363.30375.1332725155436019518.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39069756b6ce8e71be58fa293cda0617004277e35fb69ff39c5820afab8bf69c
Date: Thu, 05 Feb 2026 21:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770327233
