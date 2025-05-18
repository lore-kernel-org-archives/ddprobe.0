Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EB3F4B1E79
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747583994; cv=none; b=jlNlJbzenMiLuiltB1mXfZ4rcdmYTNUIcz64nCoIwQNhqMp+gmR3IzxezpoGZk2eloN7HfUdL5Jgco1lYvA2zDUHKQfUsMWlWmaieEDAvcZ8f6EBg3ftZM/AQPdLHIhqwmIzHLGesog3p5PISzKA4kSUklT+hSXif3fpj6neUDg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747583994; c=relaxed/simple;
	bh=y5x1oYJB0nUxNXyVOmwew64xqoXIUNmUez8g+0iy+74=;
	h=To:Subject:From:Message-Id:Date; b=CShAzLbAuC6DXkawduq8lijrpAj5kWgqqxNG4g8zItg+RCEUijSDQ5apr4c5LvsXm3EZfvggWmXPJiEumJOkM1clfkfWP72v3lkMQ9xAsLHeBel/2HnEznzEAUfFwZ1C6H/DzHI4bxgpQj3s6Y7NAItw3mL5C0AiwkQI7R6hk1w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hLYMK/Xw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hLYMK/Xw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F1F1C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747583993;
	bh=y5x1oYJB0nUxNXyVOmwew64xqoXIUNmUez8g+0iy+74=;
	h=To:Subject:From:Date:From;
	b=hLYMK/XwP+x1hO5nuARKiyIAdSNF/+BN2ZJwsNin/XYhNYL3A10aO81WNcKClP3sp
	 UBjsnXQCcOzvLidPgoWvX7/XCpdL2O9bkBvElsb/kq/1Y9aN5XH1Ktz6PQtfptvODd
	 LN0uNJkE4b/lW/8YDjSnTgUAFZddpkHoWZIB1B9lpfpNP2VtfQYVoIFsIhkG1JvL5N
	 LA9tqOR036g7STTuOVk95tMZJX+2IszH2Ubhq4oEQoh99FSp+NLOPuo94m/oOMrpRj
	 eW3Qq5PMO4GCDsy0oyEWeqbH++MkvrCIK2TScjOeELJ2WSi7c4xiGMDG7PFQKKzrz1
	 +2IhwyML579PQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE14C3ABD8
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174758399357.23518.17197996987286020391.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac006d5319949ec4e01e3b104ce845f8ff95f2e634070da5fa7d118f80635b56
Date: Sun, 18 May 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747583993
