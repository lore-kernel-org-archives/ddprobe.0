Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51F771E5B63
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 02:14:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771985694; cv=none; b=J9537+NMx7c4aEAcGOR8MA4WU44Y+j3FIM7Ug7x7L2eOd3rldngBrNch9GPtl/u3pa1qkDW1XleqFtnPdsf+W0B9J2AgrddLNpBMIzQlUpQkZucCzQHN2pJdUkxHvb2Vej+5E9Nx/jPyULVIfIze9neLfS682k7tyN18Z3rsotk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771985694; c=relaxed/simple;
	bh=Tb7JdVQxskTy8Iz9KtY0slTi+/rR4k+jm341Ar7ojW8=;
	h=To:Subject:From:Message-Id:Date; b=ACobDGJYVIBICz2W3Il90mAp5GSQfmcRs2qRFf6ze+z0UMi3SMhtRMT/3NNfT2k0nbfgMhVBfnP/63FWGLUr/jQ9cv87PHgKEQFDBOtk+94W06r5wg3vrDPdmuXvLwQmRUCJzMPTguKoJW2ZntGwcvOsgtUs6sIVHrlEmNBZjdA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a5um4ZSi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a5um4ZSi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B82F6C2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 02:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771985693;
	bh=Tb7JdVQxskTy8Iz9KtY0slTi+/rR4k+jm341Ar7ojW8=;
	h=To:Subject:From:Date:From;
	b=a5um4ZSic4XLppMLuDXXub06vvlOWgcRnynUK5PVE6b8QJhTt+KhOIYEOBwkHyjkr
	 R1cRAly4EPa4S8B1BYbmON/hG3qYAafE0yXypr9jC29jQnjc5PIiSKCyP8isf5DaZw
	 WcNc83llPXJfBARTbqfC0q6qkgqalh6L3dhFT6IIy1EiLPB2RN/QxM90aYo6vEDUdD
	 E4ZzStbqXnHSTgllK5SIcALmmGQaCb67gDp0HVYV/D+rZ6R43ozf4bRQn8fLZuIhvV
	 Mw1wbBh+AA3VaN1cmxguCjDccRKz5Jut3dP0KWUhq+7t9M3d//hr4NwGW6q82lYzzo
	 RN4L5/5hf+Qkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D1E4F55437
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 02:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177198569363.12779.14725625588530961133.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7febec0dc609a34aee48be07705449b85c6e05a652cadcb75ed9532a2cd393d
Date: Wed, 25 Feb 2026 02:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771985693
