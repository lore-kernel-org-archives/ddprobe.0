Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EDE482C3261
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 01:30:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779327036; cv=none; b=r9hAKoH1IsnbV2WkXAWCZxiuTELIhKqJdWqQ6tv4nidfVS/xV8PBqUV0H04iWvyB6Qr3GEdhDQcOczacZMgZKjp8U6sUBYoSkyeXA2eLNnU30HkLgxZ2tf1nMBYttT4+/PCZXw3q/M0hveGs+Kog3aXPvFAUUEFW2gfBx2pm8nM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779327036; c=relaxed/simple;
	bh=qdrQa2qarJm7YjHbwVbVgaGwEvi8xIrrx+tB8YOvvqQ=;
	h=To:Subject:From:Message-Id:Date; b=YYf+D/Cg1z0HQk0Qt107sm9raSLLhn+BTuSKphnKYBxXUbqogn3ELGGzqlNRn7S2nSBC4Mt9pG0weWZAQC7LGNmxIKSHvLgrViAej9No8Z8e6NB0zpKZ2/sy/lXM4xcxnNozGi/1x9ECxQAHzT5YWrc/Uj1KIXg33tscIo/nE5Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t9UUm3Hk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t9UUm3Hk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBFE6C2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 01:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779327033;
	bh=qdrQa2qarJm7YjHbwVbVgaGwEvi8xIrrx+tB8YOvvqQ=;
	h=To:Subject:From:Date:From;
	b=t9UUm3HkYdUwHCJi7cQc4RLMvkDKsAt7FRCOUlXnSnYNm08+ktDj72uA5y04DnOa0
	 X7dNFtJdfwbNBEjQxh5vEPqAykwZBl73JhgCNCdOpZeIt9DfJsb9S8RQwLuk8C0vOj
	 hqNa8r9Yk63QKHQCOKDLmwNjQzlSKAd2ljdX1nYnu/hNb7FsG4k5aevvk4km6btuws
	 Kqv4tUb6w1tmHvalbDQfncxf7ym1VpsjQhrPLGTFFNPsviCzXrrvHlEA0LqhrrwkuU
	 oS0MqMZeyMMVlVlGsHFcMZYkklE2GEy7+fIKyMfyXUehMlL6QlddajKzMveyxlSaLs
	 XEOMWJGEN4ysA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDD75CD5BAB
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 01:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177932703376.8544.2768309836437670534.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f3602ee1754acf203f412c703a57fd6f508eb41f5c7d889d598ba2298499faa
Date: Thu, 21 May 2026 01:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779327033
