Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF47DA460
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 21:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7CAE4C433EF
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 21:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670533287;
	bh=9Re2npCBJQLwvmRY/L8MbE/BXhGDFqPj5tzgV82qoR4=;
	h=To:Subject:From:Date:From;
	b=JjqWADYGfPr2JsN8G3+RqkJUYL0IOF+LgcbNXJffax/5+YsfkiC01aFGuf1MBGCND
	 mit7MULcwmlhOD+F6FOxYvcdLPi+idXd6tbJuz0dh5rPbV7ow1ona4SrMCf4y8pj1J
	 /lbhi/gnTLn2OK9Hakhva3v35aLm0zWyHHHPr8qhqlcL/2YCiwMDmjHs/CYmfmW5W8
	 Toq9F7xIfNHqINvUym5xdYM/fi0j1ETOIw48/6IAJd6YBVSQBSMZOSNeIQ0vLnNAtN
	 V1Khr50E5RvE7a6Hb7LCa7nPBQLTDX167sE7jwJ+WwTDYqMfJ7Ump7TG+HuS1ZENiS
	 Ude4Gq6FqLX7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63547C4332F
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 21:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167053328739.11501.9272122023788418908.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6fc2edee55e92c7f598ea298d42a2882d837768acb061621e6486c1514b8057e
Date: Thu, 08 Dec 2022 21:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670533287
