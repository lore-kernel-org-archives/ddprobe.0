Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3ED75393
	for <ddprobe@lists.linux.dev>; Tue, 19 Dec 2023 05:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l6Fy/pCo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77039C433C8
	for <ddprobe@lists.linux.dev>; Tue, 19 Dec 2023 05:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702962496;
	bh=EmknvKz7KupnBhgYO2wg7VyNf7db3aB7k0BIiPMbrqo=;
	h=To:Subject:From:Date:From;
	b=l6Fy/pCorJZQO92N4Ds/6PukHloJ83avJvgEjzZLqTOLpS7JpZvyHg7csFtnF8UtQ
	 Q4x24u7TBNF6tcGnx+rc6r9W7Ra8Ayaa+na9XVdt41a98GJpyGZ5nh7M+5WwRLr8Sn
	 Uko9ERiTCettN2AdzHHhjPbXniqpE2+N8k1l9q4r3PaslAs+8lerpxf16hGeebnqm8
	 mmgXKU/oLwwzrVFJRoyYC877OHtZLOQX5BZVu1UcLxAxAZRSMvmoY3S6SFXf7J5mwI
	 unGUzhBvoO6eVMv3Jb2siWp5K0hXF4gdoFoylaL18Hvt1ybYIsa+3zhkHPuoocnkKr
	 ZuACNyILzTivg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C06DC41535
	for <ddprobe@lists.linux.dev>; Tue, 19 Dec 2023 05:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170296249637.14585.4930791009960684167.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: acef6313bb15a00438d2295f81385b997d853a6ccabd3030e129281099ce5970
Date: Tue, 19 Dec 2023 05:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702962496
