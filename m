Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D04EC366
	for <ddprobe@lists.linux.dev>; Tue,  1 Nov 2022 02:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77EA8C433D7
	for <ddprobe@lists.linux.dev>; Tue,  1 Nov 2022 02:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667271054;
	bh=gBGGfJcrQgiGVKn52BtlGRmQmW4/xjGLm4KoXQy+Rfw=;
	h=To:Subject:From:Date:From;
	b=eonIKElCElTjv0cMNexvX3hjLGDqWziFcsX9Und2FP/W0x96cZaPWgCE9jd+XsRPx
	 1h3xc/ZZ/ZdgOvLEh+zSRszOnntmgYOVXarslunnw8w7fC4i2O+UhxHZWzZzD0YiY5
	 4blBAj4JVdrS1nrwz+Aw4nQF6F3oX3i2OftFQ+LLnYbdHTNDDldeIfe1cyllO3JGHa
	 L4a9R6+QsS9aBKDAzp8lnAFXhrKANqeCRORLeVQhJVAtnrkwRvyIXhfCidfW6yqYJh
	 KfEgYAADFfBG0K4v6V/UsxxPLRZSQB+ANk8ejmJGnV8z7Ar3PiZxTi5DaK6LI3L3mH
	 brV5nXKOcKR2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B08FFA3740
	for <ddprobe@lists.linux.dev>; Tue,  1 Nov 2022 02:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166727105436.32287.16531309457408882872.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f5fcf774aab6a037f6987de02d6a5ad18333a8bc05b4220cef3711521eee7b5
Date: Tue, 01 Nov 2022 02:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667271054
