Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB29F2D7DD5
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 02:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773888893; cv=none; b=PlT7OoKDoamvgqodEshYvibL6hzHIWQR90zLFfknh6/0dJpV/eHRQvDrxPVNT4rIB5HuHBGFCLX2VTBwSfzRNSUsNvoeGHYgDHl3gf0/Z1xqCXIlUlUvV7KfLCsILg+A3Y+V9pJiDmh4/+t7ZlMZeVW/YtkhTJLVDzIJnHSJqog=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773888893; c=relaxed/simple;
	bh=UzUdtm40fOskYiuuH7wj4+CURboDfX6DyHvv4nvWHrU=;
	h=To:Subject:From:Message-Id:Date; b=BLfn0VUMziXMOa/LkA4hwiOGIE9eAcmLtWeDPn0Mp8pe5eOEMmyELKxrb8Yne5OH6CuZP3B2ImeQ86931Qm/7w134s2xrMNq8EhlJliNhFIIer6kYj8dwVzi4n9181+K5oQgtFji8o2RXnJTdii2GPYuJGHfTWMxXEa1YjSo9dY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RuGM/J7b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RuGM/J7b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EA5FC19421
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 02:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773888893;
	bh=UzUdtm40fOskYiuuH7wj4+CURboDfX6DyHvv4nvWHrU=;
	h=To:Subject:From:Date:From;
	b=RuGM/J7bl+Ohzh7vxSkfffztcG5UHrBmIB14Ux9BCNuuK8HinenYSRpGy6v7b6Vp5
	 T8Is4d2agS4E6JPdJ4BVv+iX5GgQuLz0tk9CPduige3HuYc+S2YncfLsPRDHVuVeiY
	 Y+l0agXIghWoxPDq7NJuH7kpG0zFCH98+rwal2oa5SSSlzA/p1r/XlQVn7jzLEbdUX
	 vuamrAxKACuhkokS6YZ8q4UWhE8l14hYlfA/nOO9ieYI4FrBpF1/aMpTtuo2d+RW6x
	 57vlmuHK06uCuT2mEKt++HFjWa/DeGghAMYRwNwCJ0ou4qjyAu2ltDvxxMjz4nCUnj
	 E5FAA1H2gvkSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA361088E65
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 02:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177388889357.21885.16352411252326738840.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0187d231481a7da2a7b6e89b11233311dc81b579d7ed189780d5b70b3f9bcda
Date: Thu, 19 Mar 2026 02:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773888893
