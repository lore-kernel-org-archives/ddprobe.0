Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D8CF17CA
	for <ddprobe@lists.linux.dev>; Fri,  3 Nov 2023 01:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s+ko/fRX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 859C2C433C9
	for <ddprobe@lists.linux.dev>; Fri,  3 Nov 2023 01:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698974296;
	bh=deFA4iE/qoC5bKQEif4oVahg5CswYWBlhjvEU9+W2zQ=;
	h=To:Subject:From:Date:From;
	b=s+ko/fRXWuBzryMqWjkh5M0KGs170pOB21q5HBO1ob+uh4siiIHTI0iPn5aRbPxWq
	 qGU0JWnSMU1hRgnyM7qvVBkskRa19Co2DOg2jdBys5Yrkzji+VM2sk6SNnO03D0B7t
	 HVgd5L3RwM3CH+IGFHrsb1ADEG5C+Gj6RZQnt5JWnhPYcZKf8G/hmaCrstDSSZvlpd
	 Vhv3CAdUlxEVxCaKBc8L3XQ6b/tz5GrSPuYiD/Bd8oK+tcIHrNEbjtuAFDeUQJCR5E
	 CHS7ZTW/hz0SNx7IAH9z7O23+aVqXxP8cyOddNPnneWAY4ts0akNRkypwKkd9ETJxT
	 S6TGBnOzvIFvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 668D1C4167B
	for <ddprobe@lists.linux.dev>; Fri,  3 Nov 2023 01:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169897429641.21251.15256486838841750770.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba0de3c8d57d3856682ff71b0288229100836940667e43a1fd0405850b62de36
Date: Fri, 03 Nov 2023 01:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698974296
