Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35871800
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747543794; cv=none; b=FlkR8wC/EVOh1F3GUOnpVk9uoOIojBDWhX+cucyzP2rzpBrgadgNPwIONu1Ddv4zVeVbi3dnIsW4vySqOtM6Xc50Tj5ee+2abwLuZgzGI2hxU5pK4xBQ6u5NrTCTyeTlD6XWw7Q/wvv5IHk0Ki85EZu9zYgVLw1GaBAo789q7lI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747543794; c=relaxed/simple;
	bh=o1RCJnQ8QxXyU7YTcCyZxoyAqXJ2rkwhbXHVhH+7Nvg=;
	h=To:Subject:From:Message-Id:Date; b=et0EDMW3yE7FxvZ8S3fJD0z6L00qgzVNql88X1qef+ghGCB3P2CEFcl/zAM+FDn+847QjbrUw3oDEeCjuNRqlZC7xJ78YhBeDDMC+NXM1irPlBEM0JwwYRR7Iu4xt8gObuAnwwct7S+ssJxpSU5FfBE1nbMvNVvIk7ZAaOtJu/E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qSyMZC3Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qSyMZC3Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7B5CC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747543793;
	bh=o1RCJnQ8QxXyU7YTcCyZxoyAqXJ2rkwhbXHVhH+7Nvg=;
	h=To:Subject:From:Date:From;
	b=qSyMZC3QFLJNml9++ihbqxHehsgO9aEfvTRY09LfQNkf//3nLtS1JacCMGVp1Zt5d
	 ebhz13eGwYY8kft7M+pamoQ/1TaI7sKbE5xEbo39G84O6J4KQqjt379Ju9kFPyzctm
	 /3971XSg6A/gspi4fvBJmEMkcVuqQtU/BW6+kGOZucDDfDXZeT8HPHJ7IiL1lUxex8
	 U4lh0rhCYtw6rWUTYRzLQk0PYBGkqE8arONtfwwuIGyLfnwaTQixE6Svy0r5MHVQ5G
	 tgQ4kHPSJ/DZVsKG9cXjdUJKu0pEbVlrbQIfnEeqtFU6iERSzE4HtR4Mlv54Er6SEP
	 GzA0AZOBjUfwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9439DC3ABD8
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174754379357.17332.9868804227729945756.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e36c0f139ff266e1be37191dc330029ce3a4575441b88fe21ced0af80fa40f0d
Date: Sun, 18 May 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747543793
