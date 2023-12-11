Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10A7B54BE7
	for <ddprobe@lists.linux.dev>; Mon, 11 Dec 2023 21:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jdz1sfkF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B7DFC433C8
	for <ddprobe@lists.linux.dev>; Mon, 11 Dec 2023 21:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702329496;
	bh=wfjCQriZgYpsW4HIOaeDkUo3X5I6LMVSd1pfb+wIY9c=;
	h=To:Subject:From:Date:From;
	b=jdz1sfkFgRZhtEPKyYZgSEvJGnWegvssdHIE8JvsL8GPuAfv567EkB3QYwearj/YU
	 p9m21Hr3IwmEneZlA/QbzSnDYDX4sib9jkTMFS4BvQ2vIJtEE7ujahSebq4BUBIdbC
	 hsa5uyQRiI1zXCBe3Z+rrr7ae1NZXsWD7L/taQ5zKKMGdExFhjZAoZ6l+/dU0t6sZz
	 tLE7TJ+160Nye6aZ10rquFe593V0ZA546VbuSS3khBIQb+pZYxJ6SXM1W1lJNb36HN
	 OxwrbHOz3sL4LGkojR4T/qJFfh/X35oifNmfGiVC2GT8Refv3/oC5jucthx/yyDdza
	 fpRh1fxbTznRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D732C4332F
	for <ddprobe@lists.linux.dev>; Mon, 11 Dec 2023 21:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170232949637.9078.10939876493988237269.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ed6a81acc865fce736ad19208705f455e65b0d9f38291a7f324945a55ce817b
Date: Mon, 11 Dec 2023 21:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702329496
