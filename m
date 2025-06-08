Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C48510E0
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749349194; cv=none; b=SWZZ5A8B2xjTnjYyKa3WpmUBZfEQhP6RsP7UQzyIw2CRG/skuVkf6RLxmjpCv+LLOhVNedGG+8+JytbaNTUf/tz0cEn+KeMra7cGUWkMDzvoLhQubVa3iM8DfWTMvwYO4OAgv0nYrSLWDbRFKhRuo+TSHBtPAE6mUt0H0giBGjQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749349194; c=relaxed/simple;
	bh=fId8Ent/N35t/QYVp95wUKAxPG2oRhogsTftdM/3DsA=;
	h=To:Subject:From:Message-Id:Date; b=AhuLsbSrTvHk7J07imRjDxBVLgVJINOtDcZr3lIONMQHEAx7Fy3MFFEIGYZLkuFWYUk7VwBaF6abRQuTyg43SOTR+D5CKAULcFSU1Frw5LlrTEqlEZOZrQ/ghum/nrGzG1KSZJ6dE2BlICgsWtn/21XHEjJ2hWPxYP6nz8VW+W8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XWoFjnAJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XWoFjnAJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A735BC4CEE4
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749349193;
	bh=fId8Ent/N35t/QYVp95wUKAxPG2oRhogsTftdM/3DsA=;
	h=To:Subject:From:Date:From;
	b=XWoFjnAJwyt4MOAG17mViNCLMsnZ2RNh/QpRBFym6QJfRjiYv1mGrEKMecAA7y4Lx
	 A64BGPypnvf9iWsk1Z1ttHgnDv19HBNaEZUx5mujsBXcxeXvzPsPCjb+Hc/MYIEJPj
	 5KpjaTHuz7/oOkn5w2hex71S7Lbdiki5mIYIfix05Wb1gMxgTJQBrzGpTTAKyXNkE+
	 8H6ksknZOf9XK8UcQvllA8Z9bcvOw7yqCAZlhUfzsRohTutdiqPhPd3H7LDXVEdCRL
	 Q/pUYCbN4rpC1yT0drtDIa+7vZWA1z4hDyvBcCVUK4RY2Sp6FhOsWmhBut93qPqSde
	 dEkbbH26a5eEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94C13C5B543
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174934919357.30433.9805802561630659143.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c370795ad6b81e9db670587f4e632ad17548579c97bf8ff8170332c9f643882
Date: Sun, 08 Jun 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749349193
