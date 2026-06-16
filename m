Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21C8D146D5A
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 00:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781570794; cv=none; b=uZ4S5Rr9ZP0ieOZ+aAvu2n5CRfssiTOB+FYOtb7eGvwGp4aoaViJ/hNzvjFjReFBYNPC7kZesPp5PSzzyycLXsAYnYWlmiJbVo+qdSNiIqbxGFQLyQGpBs7Tan6vWbB2yLzA6wf20yFGZ1j4XBUOAmgpTDh8dgpzLcioftQPrKI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781570794; c=relaxed/simple;
	bh=2HFwToGNGv0pk7jKq5asI2P6CwbhlqE+J/lW6aTpbtQ=;
	h=To:Subject:From:Message-Id:Date; b=FN58q+Mvn57Gpu5lW9JVOJ9gZmPNYZN2DzUV125Ll0eKNV26K9PMDrhxGryIUjRBLMWGmHKRa+To3XzHgP/kkZV6hMSPqa4yg3GyDlXOOOmZZQbHBa4JgStfLzgV4YY4lf/oJJw+9MgSAmMTkAYgSq0lQFzQelM3y18SBrDrCVo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nEg6Hj6u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nEg6Hj6u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA176C2BCB4
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 00:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781570793;
	bh=2HFwToGNGv0pk7jKq5asI2P6CwbhlqE+J/lW6aTpbtQ=;
	h=To:Subject:From:Date:From;
	b=nEg6Hj6uquMjmVHWQlFF0MwdsJjtMYTMF1zHEH9FCd3MPBRQw1BOGJPNE310Sun0H
	 sFTHxgyS54feDyjcHjnZq8RCbTbSbhBEc6ZJUvr+T2QHjuMhLnBPb8J5xpivMOG977
	 5MUBBQT+u4JexTaUPcDNejS+Ol/I0b0gnIvz7RFgepY1YldRDZhOfWvQZe7+kL1DPF
	 GRJHwKVOOj318xwJEkGYt2ce7eZms70WIVlJrhHef2+n5RRzvBN9BVsQbnmc34OkKW
	 VJGoR8iMeW/v/DzUaUXH6Yo7XIfW8GdpEwJThG+H8f7YFwRvpp13GSu4nuZri6aPyL
	 WpkX7zp3Y0gUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9A83CD98DA
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 00:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178157079374.2544.13097703014375389223.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f70401a665e3a0ff11f7182574cc6341ccb6de91baed01a316c535472df213e0
Date: Tue, 16 Jun 2026 00:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781570793
