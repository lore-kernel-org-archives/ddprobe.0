Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34FB23A8723
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 06:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783406314; cv=none; b=PILYIaFPykLTlkmG0ZlA0dXheqeln76Nu0bwC+aNK9bLzZlL8jTaeqVEJFikHcrJIRk7NkCfsHjv/jpKlMr++EQfedGjNjxqbHLP/6Q6cgHjPjbsovN8Sn6oX1+iIh4eeDCqr9Q/gadS4hQnesyrb/SAZI+QZblJ4cEByr1u2UM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783406314; c=relaxed/simple;
	bh=CHCQ9KAXZSoTGOFeCmDPzZ4+SMK9tgWFKzAyAGp29oM=;
	h=To:Subject:From:Message-Id:Date; b=BstBCC7VtdcjyR1Yf5vaniNbYMPflnx6ueWnJc8qOkdo/Ewlwy92zh/k3lyrCqfFPNAcMHE6L33k8McEe3ZNDIvIDR2IMhM2hq927IoacItw6NxMURs45+K+RVs+EDKZ9Czb7TsbwIPeYeYfdaQgiUOETabyRx1dQHt4xCzwDHE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J2oSmxKO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J2oSmxKO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC0A7C2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 06:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783406313;
	bh=CHCQ9KAXZSoTGOFeCmDPzZ4+SMK9tgWFKzAyAGp29oM=;
	h=To:Subject:From:Date:From;
	b=J2oSmxKOanu2sKhypi4YG7uLJBcLSk5Mr46RwAPiEAjcYlhb5wJMzjFPKal2NCjkD
	 kh35QtjD8FUbsE99FDiaQYV1+3HgNKrnNWspJxqUIEiBfL03hxNblBYGaV0fzYkf4r
	 APdgwUSlLGB0B8fQaOzxqI7+eAChZX5bYVQ0lUhgEtDuni9n2rNWp9U/zDUVtbBl6R
	 c6hLrT2v2D7KhEiQWpyeS+i5IJF19zAhey5v6DzCAlDMVtHQv6r8a21vZP0Wxxd6EP
	 DQrd4lseNZIPJSvMI8Muvggc+szSAWTZ6osOzv/QzDj2uMrqIlLEq4c8+yGm7a6PV2
	 GBIAc1kK6Co7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A97D0C43458
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 06:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178340631368.6180.14088824909149047482.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fadf1e7de296bde42087b28254859186121c85eaa307cfd7baa1a7656c9435b0
Date: Tue, 07 Jul 2026 06:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783406313
