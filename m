Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C1FB239573
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761692394; cv=none; b=MHCMkfiWm/d2VkHOOdyHt2MOMGNvdkz+1WwWuFEucjC0ZfRlERqdYyzym1k+YdYD0tly9gDaYtYZ2eIhoq9FHzPqvRK6waG/FRA5nwKtYMfCAYGtD1H1YEes6xAKU7hSvsh62exS03vSklIJM4XvGKWVl49rfPCUhEpfEEllSQU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761692394; c=relaxed/simple;
	bh=F54bQxn0xM3gNzOXyVr+V7QPjdvHPmdYXr+tBtsyg3g=;
	h=To:Subject:From:Message-Id:Date; b=IkmDXbrlcAn4w6rO4LYft31Hq6jZ8c1DUXp+Yx1yD1ltI1RcSDuytG8EHmsaYeBfbgqDQPgJdfLQaNJscefJHm7FGRIDt+40E/DZ07ttQSxwVrzyfsxZqeUUbUeu4Rt3bJsVPvG7EhLDE2i4h4FbEjsIUoFNZENVxqopnSdQn6o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LSNKl+aG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LSNKl+aG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEEBDC4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761692393;
	bh=F54bQxn0xM3gNzOXyVr+V7QPjdvHPmdYXr+tBtsyg3g=;
	h=To:Subject:From:Date:From;
	b=LSNKl+aGamG6mMdgkVT6Vcv0UcnsXJVHGMPE3Uu/CWrHvIeK8N315cGQ5Bl2xWg1X
	 h760ar5m47Uf3cUu7XFJVd+tIEe/QNfci9X7q3Cr3lTw6PTvgCfc3uS3Kq9LVGH8OZ
	 j/zkt5CDVuYo+bO5nwsBeQ2XcBGGU60llhbxZ0WpfJfmrKrnc45eg5TRycW1S4gRlF
	 vYZuCX03j17/NUkBooFxFc65kFoAGETIMBkzcm1dR0+sgj1ZeZfIZg1XikYljH4y1c
	 mf6VG20FhzKjnMIQcDazq6roRVP7aQbPlLNB1Fdr1JlEGIINaT6laYqVCINvzKzsel
	 eUEEKE0J7/pMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF16ECCF9EA
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176169239369.2028.4465086881003998428.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a264c9db2a7559ffe9ec923191aadb67705bf01bca65a91df62cedd332005d25
Date: Tue, 28 Oct 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761692393
