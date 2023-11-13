Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 276BA7E
	for <ddprobe@lists.linux.dev>; Mon, 13 Nov 2023 19:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QsCiY+W0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 87511C433C7
	for <ddprobe@lists.linux.dev>; Mon, 13 Nov 2023 19:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699904896;
	bh=LilEEkvMAhb2653EJkmZJKlGS/9QlZlWXGLcC43ym8s=;
	h=To:Subject:From:Date:From;
	b=QsCiY+W0/6k7Bt92mmuInoqmjmAF7GVWQUDZZHIMkrYoXiugdBPhIFABbwI8cRhVZ
	 tLgZlNYy8vgHMLAfaQ4v4xmwDxjf+qyq4D4NyoJ6gcvECof7QbzLvxxBR/oBAL4Oxs
	 NTZV/7cljLX717sPeRlwHfDDbDZtqekphyEUJMvD3TIDp8zp+UVq37lZZ5WdQshdGd
	 1i5XuT5Qc9jAzlHrDgrxCQ5uTKJKYapMTxj4Gb7x43r1JE5Djia+Sosw4VfjLEbits
	 iLuZKiraQ1saPbgYyeN2Le93cUupC7EBDIq/8XrJaGcfoL3hgZX6tSYbjiC8+TZXxe
	 tOHGq2ngZ00Ew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 658E7C4332F
	for <ddprobe@lists.linux.dev>; Mon, 13 Nov 2023 19:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169990489640.6297.11750096350392608835.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 548361b9dc5ced633f9c6b8a1fedfa804d3d1f541d351c5e7239b662007cb97d
Date: Mon, 13 Nov 2023 19:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699904896
