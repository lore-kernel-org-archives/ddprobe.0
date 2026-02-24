Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0D6D2C3757
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 05:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771912493; cv=none; b=t4BWkN2ILFObZl0CWQcLNyr0b62hU12uf3fJ4YtSKWMRi0QfLiDFAH+e7VUbUXT+IOpq1LBBIvpnTIWgS1lLhWzAWxac/GhRGX1yDkstCtU6uDSl2JRp3ylYdgFhvLcWSbVjguyXal3YhAv4CPlNaSSYIYY4mZ6s2kXd9hzNv+o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771912493; c=relaxed/simple;
	bh=BoE/NGQYhPTzfKQnClvfe0iwtbNebFMklGrucPi4OXw=;
	h=To:Subject:From:Message-Id:Date; b=tbEwCeHh0y7T+2ADpPbge1vOdxd+ADNp2VRMk555syDMCSCZKf+pNt6wK4fqzDuSjlOBiuz2ZYAEm8hKedgqH8f/RjDIgoooS3Fu6kdHb3sfLfw0BPOqpg5SS64fGLcs2IWIwbWC/PkzNFR99C/F+1ZdAdkS3IAuS1m1tS6ftXA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sFVT4oDz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sFVT4oDz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A28F9C19424
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 05:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771912493;
	bh=BoE/NGQYhPTzfKQnClvfe0iwtbNebFMklGrucPi4OXw=;
	h=To:Subject:From:Date:From;
	b=sFVT4oDz35oMAzBxqOaAVsHAJ9LagIWs9RNP0eZC47q5BPwJvLpaY/YXDrd1Q6Oh4
	 w639y2aiL3K403uSzcLhqPHLXnvB55HWDO7N2vakCwTSVZmje30uDxe5zFEbEnATfp
	 VEsPdI1LCkaFE34P6WJ9HyQJscSJwN9GTcqqeZk5phnL20g2Vda4hK+lcNStvJqUPI
	 vOrUVoopA6vVnckSA98fjng2nrohOA8aVfI1it5VMv3UlNOhsVOYWWrZgDTECMe6vJ
	 iiQ54eKeiWs8NRPpZwOWOje333W02WkLCMNxzJuIlM1V5QBfKQgjiCNtxTXeVtH808
	 GuZOORa4jnJ0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91710EFB7FD
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 05:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177191249358.27115.10054876510328278034.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5257673e3c3248ae66806aea5a0199270082d16a60922890a5adaeb44f540a78
Date: Tue, 24 Feb 2026 05:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771912493
