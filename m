Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 244B633986
	for <ddprobe@lists.linux.dev>; Sat, 26 Oct 2024 03:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729914954; cv=none; b=eiZeaE0Om75jGt7+8fZ9quab3AImXTlwaIhdUr4CKC/ghOkR94y5f8Q0sezdpoQ+UdedimSQQohUhv1mL8X4iHaFe7vkSRLV4y1RXy49yjdC7QTidZPj47o26R6q/EHvwDCtkt5ziPdHp4/EE7C1Gur4GZzR9QiA3ceGY+eIKs4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729914954; c=relaxed/simple;
	bh=LqeEF5/VtGY7MQvKw2tUbO8CDnt3d4yZ4Y/pcnJaYJ8=;
	h=To:Subject:From:Message-Id:Date; b=RhFJqdHyA2GIKI+PtcJckQlAHwzPE6GK1CHWTKpLKd/D2BCicsZ0VNqhXhO3wh9sY8SyJ2F2m90CD5QrnQpsuh/6dW9k7cDlvdEcR0b5aQUFuqxwuVqv2av06EaeUavI6IXZrbNMJnCgpFrJmRrkob47du0SdRmNpK6i67Yo/Cc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TlII/MDJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TlII/MDJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFB7CC4CEC6
	for <ddprobe@lists.linux.dev>; Sat, 26 Oct 2024 03:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729914953;
	bh=LqeEF5/VtGY7MQvKw2tUbO8CDnt3d4yZ4Y/pcnJaYJ8=;
	h=To:Subject:From:Date:From;
	b=TlII/MDJUMnAOeFxygexLxUvc43p5yDSY4N3FTOrFOSrDv/GzNslJRNbDKB4aumZ7
	 jUoEv0JRzuiyYApzysmlSuDqa8O7281Op9oqkQ9b17yjfNns8j0U80+jq6zHaXFps2
	 FQGe2SrSoigKt26ikyMQrarCoNcg9Quzu6sAZ0dNaJEcggtJw8dVr05mf8rsyKHqmK
	 E+HI0Vq7Pryz/P/BlgKzOEKSo3ZlmGhJ4zt79b3YCpeUeBgdGOiXbMK5g5Gp+tVJtD
	 nPkD45SFWL2B9jBj+kRVJ5Ja0S9ozHdmCXM9OCaCjN7vwNpkWd5r13SLYB6+htm/hH
	 UMYm8Prk+a9oA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 995E4D10BE4
	for <ddprobe@lists.linux.dev>; Sat, 26 Oct 2024 03:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172991495360.7940.11917048247737700869.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88742634deaea4d0939f295d98606a470af000173a62ad9902e7d8fde73a2bb6
Date: Sat, 26 Oct 2024 03:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729914953
