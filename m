Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 345BD1494A5
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 16:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736093754; cv=none; b=t8Z+R0zd0ZUqXHO21QWKfjMBYcfSyPoeez0EsevaWwyGCf8Xnos6hyGeKK9Tfbgt3JJZGHt7+ovNSj5KX38VTnDHp11yH6wotW1PXX7oe3oK5d/mg0uCq1KdLBce9G/XRBdplcx1dAH5kTGDEVV8b1/yaRXYKc7LhE9GbA0IL04=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736093754; c=relaxed/simple;
	bh=EmIn8S09YgZlcsCIbdzN0EyLnx465JBwQBzimp/zGwk=;
	h=To:Subject:From:Message-Id:Date; b=CG5q/VTJ3ykH7TM709b5OAIBBCJAi/m6GViamhaB9XJjp5girMVyfRQe7sQwLOudl4+JOJ2KXIL8/lO4funiMm9XmMSQjWy5s8f7uKhG2muXMV5khPqzAaQk7zqud9doqew3B5OT+nomfyjWpJHlkZFOhlBNRieH00M5f8i4NEI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SpHyTvdO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SpHyTvdO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B41D3C4CED0
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 16:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736093753;
	bh=EmIn8S09YgZlcsCIbdzN0EyLnx465JBwQBzimp/zGwk=;
	h=To:Subject:From:Date:From;
	b=SpHyTvdOEFyvPnBvilcjf9aQozAJi6LE2cj3w4nF8ORSYbRYCZEpVw+BX2pQBjFOZ
	 sMK6pUKGO/9Oox1VmL6nK7FwuxfpfwKnwHJsS2uy1LGJi7hYJ/0IncPX6Ap+aKCvna
	 WHYiNuBXetviNIq2qXLUlXA/8hTtGwRKvYnUEVqdGHlcRTR9rEQi4Sw5v4D9nEUgox
	 W0ktAg6WTTJQQetKPaZvEACks2eJTC6aSO4wZbbrjDO9AUWi2mdWlLHWo4B9mKA5l+
	 2bcHQIn0oCSFLOPQNiV4l04RX+LnUYcgrBCmKs8nFJOFM8/PymaHLu4o6QKH/Kwoca
	 FZKRZL4yBopNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E703E77197
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 16:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173609375364.21024.8380284358813275122.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bad9570acc9f57ddbe289358df258bf2c8a4986bdd143dbc6f2c168ba2ebbc62
Date: Sun, 05 Jan 2025 16:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736093753
