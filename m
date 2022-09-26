Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE92763A
	for <ddprobe@lists.linux.dev>; Mon, 26 Sep 2022 10:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 66CE1C433D7
	for <ddprobe@lists.linux.dev>; Mon, 26 Sep 2022 10:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664187653;
	bh=sdU/qFVLHZC+uG6GtXczArNk/SKU4E0T2qSOgseM/s8=;
	h=To:Subject:From:Date:From;
	b=gmH/y5P968paojwe6Y/Emw8So79EsPpqZt3cBmgs1N9U4Cf1L4XadYXwRoXVlpoZj
	 o0Ov08jMUzbjGyBl7hizuHBJ6QxZy20/aUUS6mV8nvH+cYhkM+sIz7rublzwb3LO5E
	 iVkRE935He0UMogPZzd+niSBz5YdE/qfaqvQ51y+4NG0jyotfnOE/jdJRfSjMypx0J
	 luJGJLHWRQp/npZZGGC3XhGOZNblvgXXM6S0GNSEGFvPqOdw2RD8K+lLl+Z2J2o3Vk
	 TwfkmHvi/8gtMILkUAb1RR27Y8zx9VB+QxUshEeVUhAL7RcQPdfWGhAyOphK1Zt5Xa
	 keBmgniHT9YVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5077AC32771
	for <ddprobe@lists.linux.dev>; Mon, 26 Sep 2022 10:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166418765332.26347.17851428577609157667.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0ff7809465bef6f21983823b2708e123be05322fddc1d02311b01342b4574d0
Date: Mon, 26 Sep 2022 10:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664187653
