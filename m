Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A4D9BE69
	for <ddprobe@lists.linux.dev>; Tue, 17 Oct 2023 11:17:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W6puTuYQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC8A1C433CB
	for <ddprobe@lists.linux.dev>; Tue, 17 Oct 2023 11:17:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697541428;
	bh=GQDwivy9Wn15w0CYAHDXc63hTNxLo6MD0bamCqbo1EE=;
	h=To:Subject:From:Date:From;
	b=W6puTuYQYK/WVSihTTxa/5VLhuGJtuj8DtYfiZnVO4ECCYnikzBVZ49QiIDZjH00F
	 N9PzY/d9/xdutYRaVFqwvcrkkI2/oL6Q3gX8pPypv+Jt6nTGVTOzmoeACm5BGY6Nrw
	 IBOKARd6XkOFaOAapQDM7VclgieiZUU1h7GqLP7u1B9cTUMjVCdWZxfBIZtWRRcAdE
	 O8OsGJ029aQGMXACUYK1np6GIPWHvchRMMjry4ueBW0Ik4r5plbhl0HBZwwvuLQXoU
	 FHbEBGCcKVJy+D8V8qovG67xGTULPYiHVHFFQ5j/mpQdYiIZNu7shMg31c3+kL/vQP
	 AqoaAJzOyuIcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9E7ECDB474
	for <ddprobe@lists.linux.dev>; Tue, 17 Oct 2023 11:17:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169754142868.26176.14237281474491576987.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3269405b29f8ad6fe06c3e3feb4e6e95a0e236fc4f7ce9dbfe9f178cf8d40f22
Date: Tue, 17 Oct 2023 11:17:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697541428
