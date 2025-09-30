Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 286D922256F
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759201794; cv=none; b=e5AQWobx7lKOY0PH50qCrE40FTUqDh8ZdAkN9+s5/SEmV/6dMs12WpRy6yS0Jv3ZVB/INTLt7EzXJM4vJVRpFQQlmdIq9kvBnCz51XgykieoAuD01m06PqiIZAxxNyRIVdgU6L3Z0iuWB5SsfUo/gFWleGJm0KAI74NUAL8JHl8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759201794; c=relaxed/simple;
	bh=+zJm3hREGHHYLXMZok3OiJ6z+rF35MqtuitQgwytass=;
	h=To:Subject:From:Message-Id:Date; b=UE09OqML/V4Rlvb26Z/EW6/Z/70YnkALVq1GL6MQ0LgS23EFtkzRk6SiHwkJZZkkZzi7AcO3ydm0o1Y5Mvg1GLSu7rIEoPS1bHd1/mJdtwl4oY3UpSUUygJwMke4/p9zkbsI/4L5q8Lm1lkWQw8YkaMrvE/vs5pkDtT/Pt9rNIk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NIYsOJM2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NIYsOJM2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE96DC4CEF4
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759201793;
	bh=+zJm3hREGHHYLXMZok3OiJ6z+rF35MqtuitQgwytass=;
	h=To:Subject:From:Date:From;
	b=NIYsOJM2rT+5HlBktYMV6zQ0ifrewbA0oJPDJZIBl/pDAO53eBHXujUfi1APzxKZp
	 +DTKA7fvCPBBDvEeyb7FZAXN/eZIvd0TALEWyThBa+jWZb6M3dHbyQU73Ow1Flzhvp
	 mtNM/pEJc+hIFVAePeJUCvHrmD/Ps0BceRnvVOc889LOc0qCYp2LKPRWo6zgGmezze
	 oaLIZE5OiOP1UbTkyv5DReOTd7QKNZCjFlrLOxBgp1O0WuspC+XFhw9F63Sxa6kFvm
	 N09NOfsppj2+yEMwjY5JvgH1IaLwVKSZv6k2YqXfdOSxXM4fSIXRctAaFhuhK7OGhH
	 pCOdjouoWmNoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9706ACAC5B0
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175920179358.18136.4276458465736122101.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a647da0d9f726647cbfedd1b485080aed18189116bad07ca0ad17cafa42874ae
Date: Tue, 30 Sep 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759201793
