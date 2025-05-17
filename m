Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 319C32CA9
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747472394; cv=none; b=nl6f7PQintHG5gAx8bNCOV5DVtXWL5ukjSxwALMvT9C3PW7SwkLZFiuguyqb7iIWrMUphbEmVSARvoDvJciJd6hyZn5t+ZVKP2CiwtOxO1SKE21aNEGfI8+oVxltkTBURsK+gzxmq0WwUGKssw07nbv8FpxrUFfhXHW5xvw3HUY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747472394; c=relaxed/simple;
	bh=7L865kfTvEQI0Q4C6nXS516UpLfNL8qiBR8OWvKisp8=;
	h=To:Subject:From:Message-Id:Date; b=LVkEAzmWQgiM4ElF3VqJT9vbv3T4R4rAP6JcVLLH6jWmr8yFuPpj7t0N/tkHnjhElRrHr5M2HMLYFTnYXl8pO58qjA50myDLosxZDLxumnlnac0erazqQ4XW7pHuuWvprck8MgwFjdXdZzbGCYyB19O8B/L4tnwmluWTQW/xNH8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Uc/gESB+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Uc/gESB+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A33CEC4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747472393;
	bh=7L865kfTvEQI0Q4C6nXS516UpLfNL8qiBR8OWvKisp8=;
	h=To:Subject:From:Date:From;
	b=Uc/gESB+RleqNaWQy2YqLfhhUl2gr5h4Z/9HHBnm9YyG5pAQNlwLmX115q4p7bWwq
	 eWw9DgNI+uCu+DVfRw5hpzNZQR/kiwQMy+V6iG/YoGZuPdFT2PCmBjQElRGTrKRvKO
	 7+GryE0SpXfUK//mJjzcs/wQGBgJoqVp6/LE82JYuUwVTqDhaptx2Yd+VQgl2CJyFq
	 pzRdoCTLxd9azjpo4eo3f8/usoBZIIsN7RWZ7egAUNzL8NBlplIzGkOXhTYY+88uu2
	 J8q0v5I92J7p500/h39e/hp7dD/ccFVJ2Ueqxv3vVinD4hn6NcAT00NQj9oDR3GKEe
	 NeMSMzcCjXEvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91266C2D0CD
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174747239357.8095.3033368074413103409.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f59076b7e06345057544c229017a2f79ebe8fa7f6c135ade8801f4a38352d5fb
Date: Sat, 17 May 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747472393
