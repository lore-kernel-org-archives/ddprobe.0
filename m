Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FA1A41C72
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 06:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765608774; cv=none; b=rWoXGZCWiK2Xw+7t4hKGaf2j64FKc6Mug24WqQ3XQHaC72DDAhG1AUzS89nnJiAgfsMCgfVj47JKQixEDi16EC4YVEo+afVLcOfDAoaMDmonjlBv/Cc+07rTfvPXkJxgqbny1dq6nKHk/+jQKsqSyf4TwC92do4ncI4tMV7WG6E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765608774; c=relaxed/simple;
	bh=rzfaJuaUbyI73Rh7EGlrRXGjmlKbPbj7mW98HxN2YX4=;
	h=To:Subject:From:Message-Id:Date; b=tJKAOwMAy47U2PZ+ZY4WL7yNy/GZcNBbS/K8HYpmn3ntyhTKGWmHySuBdLwiqml6IDc4ieUkj90o2InyBIMcPzVcWg1cmFA1yqYCjmPk/Oyh6oUs23TJlPDsQK+7Bb9BQupPBev4lZeyavZeAw+yy8/b9RDnJViwhHQQn2iSH0Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=epvCjHr6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="epvCjHr6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1454C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 06:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765608773;
	bh=rzfaJuaUbyI73Rh7EGlrRXGjmlKbPbj7mW98HxN2YX4=;
	h=To:Subject:From:Date:From;
	b=epvCjHr6MR2LcNNoI3YXxN0Md7babVL2JxKpcDPUBfgtzdrmBLlKO1/B0qRvUnstS
	 pfo3qNJ84xXM5iIbmr/gCmj8seSm8Weo2p5yBb8BvHRuzOClNGepDK5jsgHtII5HtN
	 qAX9KO2WdzBgeNYADUGKSwFZ/z70g58DParyykSPjGNKriOGEV7dY4dYkJCd5xcm3Q
	 J0SRkirJl62dm6lLLY913oTPc8D/C0KQuddDQg2szoujcrtn1CAocREsZdthFuav2n
	 ZPd/kUhWP53mVx7yS2FCq+CjTiLQvp1UQkgArL6+XVbmNaz6U9cZpYlRjC4FAMulGr
	 iD9SW71/fEXKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 904A1D59F6F
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 06:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176560877358.8411.8400793638467949346.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf7972e13a1323abec6d3eb83fc5434b7c98f57e67b6235281092144b1a0f6f1
Date: Sat, 13 Dec 2025 06:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765608773
