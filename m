Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F37C122A80D
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 14:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773498294; cv=none; b=QYzzK6j+dU5dersi2Rgo/swvYOzsOLH9PSxxPzqr7RDPBOIOJLNEZ1GfyajcTcd/Ovmq+P9OLmPxQsCZBsaYm4bY4fWcuU8uqDu7P3CUYbJgHd/havBRZcTeIxYjvzAUkJDl1hkliO4CdboyvmimGQeKA2Sn9Q4YfKQL123Z774=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773498294; c=relaxed/simple;
	bh=NJw12oxT9KyXdneh/IDOeISAUCWDco/2BcSkQPMj0ys=;
	h=To:Subject:From:Message-Id:Date; b=iqMO9FH+xAexZF2FexOXeSRvwKH91CmfP4I1Cigqcpv1Dy4hnI0m8Ng2FcdC7Le2/sTHoVDzgquA+iNXHF7/U6zAW6g6iC1I53WLUcEt3n1CUwH4TebBqXyQBTlk0JUCeLb4as9LD7vBo2wRyaCYeLnm4yk/So+KkIrYZJNl9LA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kG/ZFhRf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kG/ZFhRf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D3ACC116C6
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 14:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773498293;
	bh=NJw12oxT9KyXdneh/IDOeISAUCWDco/2BcSkQPMj0ys=;
	h=To:Subject:From:Date:From;
	b=kG/ZFhRfB8e2texbEcASfvZcqL9FrT+h5iWty31E16lQ8UTIutsHleweZEaauoJCZ
	 8BEUmOcZj+qu+aHO2PdJ6aR11mJuXkCy5wb4yK6ZpiQrc7QKjy4wwiVUxCqYC8Da6z
	 k04BDf86o5iZoscQW3gvxEGicq0VUDddR7c2d57Ga4zJ+874kI3i5naRfuul3BajOk
	 XEWFsOsi4RpMzSE0rf8s19wJWe2pMukrbfgJt9ceTdcPM1cRj5aYFBvU3zGQCG5WP/
	 ajFqfOXqnT+CwaOQZXz9lkYj/rnnF6rrzIh/GgTrfddfA/Qh1m/A0jR097brXiBIIl
	 yie5KuJ7NHZ4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F9EC10706DF
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 14:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177349829357.1021.2085429736532274462.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40bb93e7a231ff80bc4de01450fa0509bef44eefe105891f671a7510f9a0e2c8
Date: Sat, 14 Mar 2026 14:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773498293
