Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E07913AA3C
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 20:01:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713988883; cv=none; b=Cq3kINxpwYmwfyDLfLsCLv9dYWvnke7z1cBP8paUEpJsdAM/zWUg7g/i8rl/b5Fc6EmCA68RNbsO1r5FadKTZ5eTHqmUv8iW8WH1kR/F4sAzvpGVQILb/UawXz2Zkl25xeHSQTkpTpCJv0uLg7GBj75eUpOaK8XLeNgg+L8i7qI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713988883; c=relaxed/simple;
	bh=RDmPvLm1eWofSnJJxbfGtQla9jeCS4mCwPZaoWJ92Ws=;
	h=To:Subject:From:Message-Id:Date; b=AHDUEnJn3FJwi3Qr8pf0cj/wWQskGPIG3xVSHr8oyeks0b6utT7aHVtn8LueQwF13VU2wpCQRp5DtsCy9rvZgL13OuLTZcgeguJaBC6GqGY1LDeYNXEW0vWo7BLMLgdaBO/wmI0eXtuxLy56V6PduZ4+mw6hVaGaau+kM64PYTk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NuI3p5ZQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NuI3p5ZQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 06D49C113CD
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 20:01:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713988883;
	bh=RDmPvLm1eWofSnJJxbfGtQla9jeCS4mCwPZaoWJ92Ws=;
	h=To:Subject:From:Date:From;
	b=NuI3p5ZQsD50I0Z9VxjqrlDrDXyHLkg9bJ+3FfML5XbZ02Q4LWJevOdJIuWq1JW0U
	 SajnPEzlLXq2cgcs4o0zQYI+v9kQ08Fk8XoyCq93Nb5ZJzJxbQ4nUZ9UNQh+HdRCp2
	 Wko0fPwsl+QvfjyoQuOzVlqCUxdah9uH8C05snkt9xIXWW4DJVkljBXa2mA8mr+GSg
	 B91pvnOh42ZwoYL2nZceoj5gySD0HdrSXKaY/HqrQ9KoNaMzgA6v2W6/QVcKEI20qs
	 8LqvktCqLlj0wsAk0OeP3KEGAL0NCK4Kufstpc4UwAHchgYTT+GMM1x9w5li239noL
	 lT+wxIbJGrH6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E0D84C4345F
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 20:01:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171398888290.5986.3289922452238557109.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 834b7250aaff21bb68c2945920a7f2cc0583521dca3adb981e74cd74158fadf9
Date: Wed, 24 Apr 2024 20:01:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713988882
