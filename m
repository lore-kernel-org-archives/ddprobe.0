Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7C303F074F
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 16:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774455893; cv=none; b=WpQsCo7814heBACpNRa7vK6nWVjzwrCAvva/gtITCMz7oZYVmlsHQ49nxvDnfJYckaURRbWgj2bpVg4bv3tQP6z/5DpKYG669w+p3kUV3N1Eqy7VxrHQlfaxwnUVJozaKhtZ9RKk8wYPfGpsCyQykrMhq/+L17+/ngccUfdAHBM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774455893; c=relaxed/simple;
	bh=Ji4DgE4pShYLVZ4IxQIolBoHm/V4jheU1+UhYhR7dqI=;
	h=To:Subject:From:Message-Id:Date; b=m4nWu0Vl0LSzP9C5Q6VWIv/JOqW4utbu/BTWnBY3aJlVC3iuZlO1PA6IkxvcgOp3u8KkkIwu2K3591McYshaQM6a74VPHZM+quPFbIN+uwWaNI825jnOfsdFKnRjR+1bS2ksHQ9hyX46Tg1MzlutNSHgv85Z/t0TKfzi0C+lPJs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vNWA6oyv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vNWA6oyv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1BDCC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 16:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774455893;
	bh=Ji4DgE4pShYLVZ4IxQIolBoHm/V4jheU1+UhYhR7dqI=;
	h=To:Subject:From:Date:From;
	b=vNWA6oyvNiE3soIfMRoWvpCEfhNYEvYfLwluwRTKdVchCaqf5pTitwZHFJ66+h/gt
	 sC+qzPFewKAGPKzYYsZaRhi2G5lHD115JDl8nIdXzaMnaY8D1R1EgzjXLzhsE3xtwP
	 hbR4CipMTICEyIcyvHCFloS7TIqiAdRnbCVaN0g0WFeMoglGXS9n2pw9StaLwjqJQE
	 ZJDlqo+o8zbF7obYlw1AJnBtkrM+BuND9Ws0bEiJeY8kSFHMxZFvz9KMO/OYbbTq81
	 hKhz1Hpct5QqZ5/Dp8d8eh8FbIutQqK3QkDlFNjXiEkF0CfiX8XVW0C3H2ckBMNtfT
	 097hva6DBgqog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9149A109C033
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 16:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177445589358.2508.7658556873444620562.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84fcab5259d93993711393d924fdc899db284f56bc13d14b5135aa731cdaf6fb
Date: Wed, 25 Mar 2026 16:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774455893
