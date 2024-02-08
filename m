Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0576A36B17
	for <ddprobe@lists.linux.dev>; Thu,  8 Feb 2024 19:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707420497; cv=none; b=t8FBqmCKJCP+nV1Oi9t6sF2CTGIfQYOAz6UKBWsdu1kfo6OchaQF2sEnrWTgN50vMemCQObLVDPjAlqTeaGDxiVy+Oqpjkk6i2jMK8QRTqbb8SK1aL5A9UEbRUzOCh5Bdnb9VBO9G9GJpWT90XVGjqfUhGCyvuKkB4/fPjvkm1M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707420497; c=relaxed/simple;
	bh=rCDWoApIJRQr8Eszki1N7xWS5zFdOoPyO2B7JzXh39I=;
	h=To:Subject:From:Message-Id:Date; b=VIYIW0MucTy+iUQLrb7AAMIXU9bHBNlmLsU+w1jdZ1f5Vqj3OlXhy4fmC/4bbVNZrBafbIPhihKVEGlyVE1CbX43xK5HhKoG7PgugX+HzldcIyshZdKsM2Z2sl0eHHKn8aj5eDyNodGVa9BtS02mw9yD01GiOKzhpDkZSLgBp94=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U/sihX/d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U/sihX/d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 814C8C433F1
	for <ddprobe@lists.linux.dev>; Thu,  8 Feb 2024 19:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707420496;
	bh=rCDWoApIJRQr8Eszki1N7xWS5zFdOoPyO2B7JzXh39I=;
	h=To:Subject:From:Date:From;
	b=U/sihX/dO0IaT8e8QZQa5LugHH12hdS19LkDcuqr6QT4C6XmmipJMssZkJZ7BdGmv
	 oQCY5w9+9kV6pxiHsUdsxovMs4uRmJ+qr4F4L87dzehOYrMLK4TT/FHyRdn9thsn34
	 5Rm7TBgrc1FIzD4Cbt5YdF4Nn2GFSHbLCEgByJ/IqgqnMYOcPKefGKuaUZUcF2Z/7x
	 SfDw1Oz7QGK/1DPkMSyZ2aAq0eEUQ1wrWOrG7BTeVWgQQ33ayX8rRa2SN8TeEJoree
	 auaGtHA6T6Sv1xoQKB5BEaOU4vb+vKro8NKRVgpCb19YYt841JXzbPZObOrtHAwFO2
	 ADyYusI0C7JwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 647B3C4828F
	for <ddprobe@lists.linux.dev>; Thu,  8 Feb 2024 19:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170742049640.9495.524490503620317729.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03ec5e180ec5159db1c13a0302777569c3ee4622ddd8a73fba51d4bf78862571
Date: Thu, 08 Feb 2024 19:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707420496
