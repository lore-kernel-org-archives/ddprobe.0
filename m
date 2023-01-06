Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D42DB7E3
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 01:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D931C433EF
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 01:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672968087;
	bh=zT4tOcl9/lertvb1+/a2LvLNxAIgvbktWgBhnCS0VUo=;
	h=To:Subject:From:Date:From;
	b=XwVZYw/v+uBvirjNPggTw5da8o0XsLoywC1+8s0w9MO0lz6GqFSQizxl07lK4UgB4
	 e0cls4/UAWKreSuPFdhyENlNJOpRlI7hS7NRXSApMVaAyDFKRD757ygri1LC+kj2Kh
	 rQhsc0CGwEz/7MHt5cNDrax5piwIpkVNGYhGsGbfxOV/ThZHUZsgMSpatLVfPyLcGr
	 RaqH108E/r4Li54aAh/5matvNgu9mqIbXe3ROOIU6k5P47XK+XSmOHi6/y4Y3kKhsw
	 AqUSG/zbTRzntEczEsQnoT7VuUOZJQKwTnHqMm5QXSwYxFfqvMQOfZiip1z/AAOQk+
	 Yf/8tBeQq1fkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61113C4708E
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 01:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167296808739.16951.8461383533055637950.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 136fe6fc988f8222f41c7a9e3fe2296799a2e9ce1aefbec5f13944ba4b3ea338
Date: Fri, 06 Jan 2023 01:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672968087
