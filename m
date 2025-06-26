Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A4C5222576
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750971594; cv=none; b=nV2vh4ttw3ixxEjFaB3Tcmg0ui+vI2fjkt1M2efHfq3YCKr9yBdsqV7dTOH1OgteArch1r7Cs8YgijcAbfj6xPwVzQgEGIgCNAXsiVezPITBpI+jjybZypna3EdYrqIEbO9JkBkL517vZc8YJoqV8ucM2MpGvLiTd7wHxqRIihc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750971594; c=relaxed/simple;
	bh=1nfi3dc5p93EHR7ziEOiD+iKGL7htoyjU1JF9CwwaBg=;
	h=To:Subject:From:Message-Id:Date; b=G9aVqWlj3RGAFEewOUYPCHwAhphjHUzddK1QfEJh9Ntjt5REHNuKi1dLT+TmewZXa9Xg9QP9CFV+CzOQK5JqIz46fAxe0Lx9HhbXEVFuEwrFlfRVxoNkxXksK0zBpoQWHt/fNXbpCQkR4N0BnjmfOQR+UYbqI0gQoPHbeOd5hAE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FKf3fc/m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FKf3fc/m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AED3CC4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750971593;
	bh=1nfi3dc5p93EHR7ziEOiD+iKGL7htoyjU1JF9CwwaBg=;
	h=To:Subject:From:Date:From;
	b=FKf3fc/mTkNmjkC95U6c3YDFtMxQJxTFiUJT/W8K3+AM2PA2DmvN66qpSWS+PvA5w
	 GV6NUoDC4XAa6o8++B8lyZCHgZO/zdVDG7ZJo4TOUtwCQIy8lxgvtzQL2M54W2Agn9
	 SVTm3bBa0fb7hdvJizyhl8B3uqHc6h9fMFMR7ErahwOWmrJXa73SSydkPukClGC3Od
	 bnWvXLWxnvJTkzVWc3v7Zy6ygWFckfHcwZkoZ++8fvVLTTHXG2SeRcDPyYFcssOLuL
	 wAA6YR73or1jolP3yzml0tEIf32nhHfb5wQ4f6JPBMi3AeFNkZCp5TjQFNwoJWnbYD
	 qdmvLW0C/JuhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B6F3C7EE30
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175097159362.7457.10244793264926572685.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: afa9ce88b717793e8d41c68e029e2a2c83420192d67f79c8b32a91790a1046de
Date: Thu, 26 Jun 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750971593
