Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFA685820B
	for <ddprobe@lists.linux.dev>; Thu, 11 Jan 2024 20:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZzhECg2W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7FA85C433F1
	for <ddprobe@lists.linux.dev>; Thu, 11 Jan 2024 20:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705006096;
	bh=Q57mQt2/h/4TXUnxPpm1Ot6mbl8yzKCQjliwvpQR2gs=;
	h=To:Subject:From:Date:From;
	b=ZzhECg2WowOAYg474ML6vET9CgKT6Omn00hysR7llSe1lBJ7AY5LbOcDAy3vHb0LB
	 pMyMAv+WL49lJUbSIAXZNr+ybSIGF4vecXgvdThYzjWvOgsFY2pqcKtFVD9XNMxnXw
	 CGIsvx/yWXNpZjVJuTUvbC6awPx3I0htJJvbd3yOGjYJuwSFM2M63beOnU6azv/iiZ
	 d8HgC+uiFfksPJnJLmjLSWsITym3HpC/TRLYAKoeiHoo7CoZRWH+1iL67Q7fbTp1ug
	 6OQXogpiNxxUBlW4olS7Og7lE+PedYwPabzkl8y7SyYhqt1dJRxLkz0gnwaw1dL3ab
	 rI8fsM4T4fAzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63755C4707B
	for <ddprobe@lists.linux.dev>; Thu, 11 Jan 2024 20:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170500609639.2196.7661553933269033987.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 153ebc2fb3b702a0257ec63b4b1d54bc7fe9eff12f08f931e56bd9a0ac40d0cf
Date: Thu, 11 Jan 2024 20:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705006096
