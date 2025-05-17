Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49C111922F4
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747517996; cv=none; b=L4FtQRDe6Eky3ogry4hCoc2C6d1nnMOMuELua28KDFZdKniwtsTKvx7rYqU9TLRHlPlW5A8DRyRBdeEGZzYVyyVEmrlPNi/OcBLkAY6O0E0Cf5GgIZVmZ1wi6/rIp8UFxNYGhYxYhbALsQtP/YZ01sa6nxE9pWZraX2YQgyx03A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747517996; c=relaxed/simple;
	bh=lQocT5ekuk/vWWfhei3LiXUJjjBE0wxygl6xdecJ6lE=;
	h=To:Subject:From:Message-Id:Date; b=IwjXbUGXEHp2/d6+kqn3GwnQIvqdcxikc5DHRC0oK+FWQIROuiVq8BQYJ/X2zs0AxgqqHSzSxjhmrTQuHH8cO3U3rR9B1Mxv49GKlgQIA+5Re7/+AxXIliLg/ZB3maaEHNIW0oba7hbh+NJZ16Ibt3r0OIMfTO0mymob1i1Fizw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sOFOlQJx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sOFOlQJx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7CCAC4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747517993;
	bh=lQocT5ekuk/vWWfhei3LiXUJjjBE0wxygl6xdecJ6lE=;
	h=To:Subject:From:Date:From;
	b=sOFOlQJxpbamgQhpMY3oruyWJ70Xx65b9+iMaC1rOEuAQicdQ42QqXhUs5Bwh8jO2
	 AWhHuKZeak28GwvVmxOc90hg8j+JXn9IdI6kfR06QFr99BSLsQzFCNYHgQ/F9apEPF
	 QI/0GDJlB608ppdGCA+w6cdKj2fFwRir0DE2IBnNS/k/Z8Z/FOPIkzVypk0SxURB9V
	 UhXCHfwGeqaio1Sxyv2Ujwk28GmM7Du5eteHUPB/bmqAqh4p22nLsQyPVtQaFNz+Kz
	 mpOOpZWMVRA+kVdxVdX0ryniHHQEs3fmnu6IeMBzdhIsP9w7kw5tvhlp+XcE4CPjsS
	 OZ6e6F9aQOigA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9211FC2D0CD
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174751799357.23832.8688717130466737309.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0926fafcd73f7c7ecd2b910de3b4223c1ce5cd0cbb71bde37e7da31736b3d370
Date: Sat, 17 May 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747517993
