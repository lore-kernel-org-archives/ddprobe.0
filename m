Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E92A284B3F
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747665594; cv=none; b=rXAi89p8pmTJyK0MVc7CzXkuv+4yx7Prpd25LJoghhMFm5vufmnVOQujcRKWS85ExTo45ibKEmSOQ2CqTiI0gGBTibMDXdRq9hsPYz6DNEDbve7Z/VQZ6gNLbULv3OcWIx9bkC3b6LdtJjxrBz92h8Nr+8g+j9YSIx6xJO7+f9c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747665594; c=relaxed/simple;
	bh=Z0w2uUxOcGWu+oQm/h4x4RHYJ70FCTwL8TPrWQGD0zA=;
	h=To:Subject:From:Message-Id:Date; b=ZWmp0Nhu+xAZgHUs3YrJa/Km9/G+xfknWfgVUupBvQEGbvFy6tD/5JjXkUmyL5rUJ1ov6CVtJ2YyofKH1Y+ix8C2wHTjU5D2xqeN/OIRm3yKjviQSJimow9UbJqJn1dQ5YXOSW1J57YfoYiws1xpaSE04DrP0KVW3bAbofxevPw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kbPeFQLN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kbPeFQLN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E0ACC4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747665593;
	bh=Z0w2uUxOcGWu+oQm/h4x4RHYJ70FCTwL8TPrWQGD0zA=;
	h=To:Subject:From:Date:From;
	b=kbPeFQLNxW3krAKlIVlNzIpjJDiAyxho5a4qwpHfGZ6ArV/zRp8vheA/kyiLjO4+4
	 tnLe+o5pTxT82KgAdDruP5Dv1RYOV1S2nIZF3IMslaaGONBhjP/XMGR6W+x3XaijN1
	 EpN6gPVnForAP9AnziX0J4PAuWzFe1rGBpsf2xWRHqkZ3vQd3gCcVmd4KJXTwMcBEC
	 OzmxuKMXJm8EKY4nmuig2UNGOvBKGwvm5vomykbL8xjE+F1AX7NfeloFj3trg55qLX
	 nvsJcqeq9FgbaLYMutg4C5woiCf0R8yD/Hf8lmmziHuW+IAcjs33f7fvhKCus2qh0D
	 4bNVcTYx95fsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F272C2D0CD
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174766559357.2775.7635134572583394521.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e93e64509cf9fa711c4047cfbda5851f697936625dd61c6a729bb9b9d1e62f3
Date: Mon, 19 May 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747665593
