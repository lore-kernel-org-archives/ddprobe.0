Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3317579CC
	for <ddprobe@lists.linux.dev>; Wed,  5 Apr 2023 20:57:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF8D1C433EF
	for <ddprobe@lists.linux.dev>; Wed,  5 Apr 2023 20:57:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680728225;
	bh=5aFjaN9y5+BiEqfHLio9m2XJHx31vIT+U+BJgK/FuUU=;
	h=To:Subject:From:Date:From;
	b=U7Np4jynapkHRbvNWbMMV8oAs2ktaB2r2ihD+HNb7YN23/JTnqSPDRFoPSqhVSN5a
	 C8MVkvhX/MoyV7wOS8Bz8X+LhlbwrspNsWMoMbKzobawDrNCCOxHqmJc9G4k3wtXKa
	 DF0/JcGgVVhx/5QCWWj7oKBUpuPUwqTdb1IBg6gDbYj2cv93T2kCFORlt6ia2gX/kn
	 E8OVUJO8s7i+2n+cYv58707PLbLkTuNOjK0PAba8Yoiu8BfatgcaTKmh0ub25JjZ4M
	 16Ll9f1BgP00t/CEj5QVwYbToXgEPRxaVZmNnY4XdFTsQTdHQnBD1XpAGlvtLA6PyK
	 5pzQo7N1ncU6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B58BEC76188
	for <ddprobe@lists.linux.dev>; Wed,  5 Apr 2023 20:57:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168072822573.28184.2803705653813741868.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a31b607c2da50240c22d5d84b76902016e0e97efaa8793bfcf33943adae553a9
Date: Wed, 05 Apr 2023 20:57:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680728225
