Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 077E838E
	for <ddprobe@lists.linux.dev>; Thu, 14 Dec 2023 01:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nkgreVZi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 761F2C433C7
	for <ddprobe@lists.linux.dev>; Thu, 14 Dec 2023 01:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702516096;
	bh=WUDhGrwmytXFN97op0vEZMnHqHoXBqWCEs1ZrWgbLlA=;
	h=To:Subject:From:Date:From;
	b=nkgreVZi5UZ6VYTQFYqDCHaKRb07D/egIi/elVxOpfuTHumECb8PbV2tGJdoGEfbc
	 J61HlXdQ1XkcjWTSFMXr2j3rw5XblYdFSyDk4ZkZ6Q9OhJx42M20GkvWRA6xy9UY6b
	 OpcmFWWO1xgdchRzylKUOwWvwHhJY75Y4ukpXY9n6GghRyo5jqTg0QrUs0+sHsv+m3
	 ON68tsKELEgjJxSxrJu8SpZhWhp2VWhNbvSBcCk1NX1S7/r7Ex91jEEHFarOGZh/NW
	 wJuHtRdefGQYu5AsZkFENyfTVyvGc5E/rQJmx+6Ul/9ElD4+uF6OUuTXCqLqcMgw2+
	 EaVyz6QYEmNaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C39AC4332F
	for <ddprobe@lists.linux.dev>; Thu, 14 Dec 2023 01:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170251609637.4308.9801255421479205135.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 291a881e6a7c619b6920e1d2a60a9e823f6201c6812bf5cbdc0407a8320fb80e
Date: Thu, 14 Dec 2023 01:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702516096
