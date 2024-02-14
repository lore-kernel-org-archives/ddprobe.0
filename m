Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F4B812F5A2
	for <ddprobe@lists.linux.dev>; Wed, 14 Feb 2024 18:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707937097; cv=none; b=MdT+nY4ZBhJAo61ta5jZwF6+uvxjwPRCl5GjCnIq4xYKG+GrVMBiw4hZ4NQBtIS4YTRine2LcgBpLjYyOaBuy0eho+6FNQCtb8LKXPVSRlwmpPvRoQVSXDtqVOFMqHBwu3o+/Qgm5igPY7aRpJCTbv+825HussnHqGifJwcmh3o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707937097; c=relaxed/simple;
	bh=f/k24zOXce0OgzfDFAyBVhW/n+ijfPUTXmZ7Eci6NB0=;
	h=To:Subject:From:Message-Id:Date; b=Dr7d2fC/5oirkrJ3vcV5OgGlCbZciQdvznvPZJratUqiNkHxwxwg5D1c+/JceBqCgxqP7PHZVNLV1kxuePAihWQvvK0KWD37L2DpPDq9KWNqwd+6UWtqyX3Dgruxx5bAXxDoSGrSibHxGBBqh+/54jKJ+aW3pLyJUO/5bql11OY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HdGibNph; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HdGibNph"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 839CEC433C7
	for <ddprobe@lists.linux.dev>; Wed, 14 Feb 2024 18:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707937096;
	bh=f/k24zOXce0OgzfDFAyBVhW/n+ijfPUTXmZ7Eci6NB0=;
	h=To:Subject:From:Date:From;
	b=HdGibNphUWczNeYVxoCO1aSCyH2LPttR4fuiKzG/RSCtmrt99k/pejXLB7WLLCarM
	 BRAj93UZ8P4Q8iFqFqgijgPwn6vyrMMu35rnoOk+Vjv6E9VhCHb4tWr8RQk+u2B3d7
	 DiWbaIXlGOG4bEPPNuBMbTkSITnJjJgtOZ1ZBYl5FM53i6pJBhldTtZc6sZ15nCwOy
	 TI67RgfCzPQuvL9w9LOq3brmxsvEXYgyKlNbpdfPEXgxZaFPqpXmbm0PZp967TRAV5
	 pCeEcbzvuGGGmIz8en6MUbu8hnuvGFomqC8cKr7bw0VjRZvhMlRe5Aw9P6+7F/Myon
	 F2+Za2DCZuSKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 657EAC48BC3
	for <ddprobe@lists.linux.dev>; Wed, 14 Feb 2024 18:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170793709640.1100.6997997513109646481.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba422c9d3d207e627767d2f78923db6aee4ae3c20974cc186429483510bdf5fe
Date: Wed, 14 Feb 2024 18:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707937096
