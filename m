Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9EB7E474241
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 12:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787057434; cv=none; b=oBUHbnwc6JtWgkPEYHnX8xmjJazJBdaQdOfgtsGGP5gmQ656Iuesk8KOoeqX63vWyHKzXeAqzQaCpSeZyOwvBQsaZENv7q4WNe8ZMrrnCWa9IynIaS7kjLWPn8yVdP5DroTXhLMnVD50VnROgWJUDOVQrBUsGRqvyST+UkQv4FY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787057434; c=relaxed/simple;
	bh=BItctX/jLXYV6SEeC0XSOlje8J9D4N8lwWI/MIwJ8xw=;
	h=To:Subject:From:Message-Id:Date; b=Ehr3SHwe2f/6YbCNS0gijH0FWL3GdPaykTTpcG2M4vCNtb/Dm0kuVvcm5/gkENepc/zqgAPSwW2Kg5vvvoGxdUCRG01xgTkDQvTeH8A9up6ULlxX+mLj/a9645JTdY+8c7dbnlmckPIqv+yOiO+FsupuesgR+ZwU/QLtj3XcWjc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PsY1iuso; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PsY1iuso"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4D4FC2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 12:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787057433;
	bh=BItctX/jLXYV6SEeC0XSOlje8J9D4N8lwWI/MIwJ8xw=;
	h=To:Subject:From:Date:From;
	b=PsY1iusoGTJ2Bt45TeagxUY/fO7lP0KtPunYCuGHw+uQlvsclr1c01Zp4xFy8ItIM
	 qYc925oFgUI/iKm4kgGySCxIq6nAMixsGdjlY39NowOLyjbznKwLt8aFOFkSBpquaZ
	 NI1YDO3FbjIvHykFOLLUghh7iOZIDO+jiMiUb2L8GgxkJgyu2qK4e9PUI8dxOh6NhW
	 8aODsR3LT5DdWxTj8cw75vCS4vnqh6TjrQFGddg/oow+yJdA3+QO2z8RkHn+QSXOdc
	 DfT8/bODq+yClWhmlpJTOR8GRJ02hoF3RQ4n4HKLSHjK/5FJ+eMepPAvnVgO/YM+UH
	 9VGUPKeHABDEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACC0EC5DF84
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 12:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178705743369.8930.13190547994084879860.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6c0b77048da797118275ad07d3092cbc8668451cbeba9ff48352a4a249f912b
Date: Tue, 18 Aug 2026 12:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787057433
