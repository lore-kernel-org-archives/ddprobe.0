Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 349C646BF
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 11:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737112554; cv=none; b=EP3JdB8Jzd85t2582+brJVNMLBN9y6jtHeW4sx3+o+d3IhCO4aJ4z2hp73kBQP3vvy4Dbg9TAbusRSOvPct7kOZiQMgR2FnTGICwX0w6Ngtqggfl+5O0t8f799RzqxzxPoZsYIXEQFoqYTG1J3SIJ3fPaUSCpGj4kHxONPgQKzc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737112554; c=relaxed/simple;
	bh=OSDmz7sYn62I8QROZ+8DY6h8lmuk63QleKDmehr/I9E=;
	h=To:Subject:From:Message-Id:Date; b=KqUCyMQjUgs4hjysgEaBypKHFXGThrYHoREkdMhZJlG6tZBNy0jzB53FMlEjDsHvccLLV2fbHtlRmcQG0ITJcQvUO3PO52MyQZCqVYOoViYApOqnbDPUpmzLX8EuFvk5F3zVhBU8TKNe5/fHuP5EOFCzWnCSJocb/o9OSgEZYHM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WLAYGbV4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WLAYGbV4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA004C4CEDF
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 11:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737112553;
	bh=OSDmz7sYn62I8QROZ+8DY6h8lmuk63QleKDmehr/I9E=;
	h=To:Subject:From:Date:From;
	b=WLAYGbV4IJ75hoDgEjGxyPcMA7Lpb6qsH+Dx+sbH7YNDd7F/TjhuoiqUHkR6923H9
	 kIkl2fnLltlUw/J/v9Klf4J7r1mja/cn8KP6VqBEibKPeoLxkG1nL7yg5/tSi9IPg0
	 ZL8ESFPWDPnr29M0b4ZlOpjkTu16+j9K+aivUdJzirYXsFG3MusnGYcaLgb4DYIjA4
	 WRiLxcWfHwKE8hIU+5/uFjLHQGOKQyZbU0wwVvIw0Mw3f9rKvoVG/LCE1dztiBlNNQ
	 xW0CAnv5j/aokJjJPGxmncst0oHsy+SOLBBDOfgKxupZe/jiawkuLiJHF6Hi7SKYgY
	 GTajkUjW9Oc+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 979EBC02183
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 11:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173711255358.7419.4101024656755650115.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 310c311662d9064e56c222c938512d3fd6869d8f5065b19d703b4d2141126586
Date: Fri, 17 Jan 2025 11:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737112553
