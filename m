Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2193919DFA7
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 07:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736320554; cv=none; b=X57dHEs+69v+6aWMNNQba5JJxfdrtXFkGjzV8/trSzGoVqkMccVYKoZcGROjgadC+u1HH4tV4FflVIzYGYtT5NE8HE7AeTdWlq4rNL9I89KfQKisZAsMy3Q3dZyiK6Qxhg5SD4fAi2yufdmD4FMTLg5Zfkf2B0bR9V0otEecaFQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736320554; c=relaxed/simple;
	bh=2u4O9qDHB7Mb+VtiYG1yxFHD4dh/5a69+71aYVUnt1Q=;
	h=To:Subject:From:Message-Id:Date; b=KppXnztlM/6fLj9qimamu5OY/ZWyGGF+aNy3hWY2xJHrK+Axtn6/SGZDUTmjzZsPf0FETTLNFZ8cH4cN+xbr1QraeHvKjFyOuh7g9oCfylGhpBSj9lvmMZyyPHe71ulSv1DkTsqWTy7OD0ixo4fCCG2dO/o/kEUEAUKLH8MyMUI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PERKrNT/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PERKrNT/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFEB5C4CEE0
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 07:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736320553;
	bh=2u4O9qDHB7Mb+VtiYG1yxFHD4dh/5a69+71aYVUnt1Q=;
	h=To:Subject:From:Date:From;
	b=PERKrNT/l6hhH7aMWsacy1BNqDbYoA4XdYvP6lGlPE77azZtfLLPGs8APN85hG0+D
	 2uVk0MQNC7sd6YpJHKCBDSpMdWL6unl2eTbh2y+OTJZmKeFsa6TeFSqfVg6ahZJrV3
	 R+exl/6szUI9yDU7MKew7Fewu7lmmlQtlAz7AR5qWOAd/+4haIZ/zFazGtM2w4ww9N
	 xVxZwoC9v6H2Whz+AjVZ7MpGshapK5SElQtdvce+KmHO8zvYjHTyuxfyd7YaOM7PH+
	 ezmd9Ecu3o+Gd77et2UjIg1QKXCITBSKEnFNsP8wxVHZRr+81eT73FC2pPvGGLF/sX
	 5TVDG/BOf0BFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B061E77188
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 07:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173632055362.7422.11861505482208687561.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81f8795010217c88f101129655b3c68cc6966bc5efef5d2d7e22148909e806f3
Date: Wed, 08 Jan 2025 07:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736320553
