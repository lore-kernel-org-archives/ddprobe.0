Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 468553595D
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747628994; cv=none; b=MXcBqPFtuov4fWnDLDq34LXtGOhdO4oU5Bb3dub8IxBYVGPRlspQYD8T6gg6lAyAjsb/jwycTX33U+YcJUFeraDBIsiOx1FACebG/kQVgkFL4b1Yfhj1ttcNA/q5wm+U4/bswwA+hiTB5u7YvQhY5rH0mGrrlXV9HUe6dfdOIUU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747628994; c=relaxed/simple;
	bh=Yphscz6p/Pxmx5jnUXv57DMaH1qXBryxzqQipA37jC4=;
	h=To:Subject:From:Message-Id:Date; b=aJ4CWRjKpz1Uk9x2jFFjQ4kVk2Mu7LbtjGdmPs/NchJzwy8OzniFrEdNIIAOm82CbMpnAV+/dEJWe4bfa2tL5Ev1cdX0Gie7PxplTVvXzv5YOqXxOuz1FYQZHQKhVcwsXHFd2xDfulj2NjzXb/gwrVuuNnrurKiXgozKyB5Mqug=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rSangN0E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rSangN0E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2FA1C4CEE9
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747628993;
	bh=Yphscz6p/Pxmx5jnUXv57DMaH1qXBryxzqQipA37jC4=;
	h=To:Subject:From:Date:From;
	b=rSangN0EN0pppM9aXOsXe1D+iiYDGvJKjN67ddpUY6nCnidMXFoJlmYlaH3/uiHeu
	 u9eAbzR+sUcn1TrsgO9QSmDJMIXwtGEEttu+m3s0VE7Qq/ncaFapl0DEZk1BwoVN0W
	 4tBpAZwyMI0E3zokLEUgLpJKLhtYCIbrUbvjmWzuz4Sjx+PehTQezgQ/6HvIYpJEtS
	 GfJfHrjhiYwhrBnM55L+rGN+V/UBo0NcV0YTl6yZbEVJgOiykTIxqpFPsZ+EZyA9po
	 nShW/QfBkv4g2/Dei5O+p7PelFqyrC5d17d+b8fSmFqcHWRhsXB4wHccCyYbjuxOG7
	 j9zDcBDe7Dj5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90881C2D0CD
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174762899358.25488.599756359173898045.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5e8db6eb7c69def71d83d64978b33da073cb5c56077fbc55eafd3b5d3cf76a8
Date: Mon, 19 May 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747628993
