Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D3C61798C
	for <ddprobe@lists.linux.dev>; Sun,  1 Oct 2023 19:06:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3D42C433C8
	for <ddprobe@lists.linux.dev>; Sun,  1 Oct 2023 19:06:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696187168;
	bh=5D9xmh3OlEoOKenqbMLbr/eBURDChdlVfMbkRX1GT3E=;
	h=To:Subject:From:Date:From;
	b=CklZEwqs18JJH1RY6Fe3xnS9wLClTTTJE+bI2c5gJ8tZgSj5F/OPGMgAXjM1mEwKa
	 F1E77U/jGpi11OVaUZtQiCg3sdQeUQBS11ReJvTxAido1uXY4qhfyWgO/2LPIu+mB1
	 31FWZs68vyidz7H0h6g4qnoqK/fGc2ofix8fxiMfEwCbrHYSTWmw8YSL6YQBp1LqyB
	 a44soX1qpGtC4nWxa/ljEa8uJyh4xQI2Iwy5jQOzOvCitTTA6KmxLhqVipP/MeH5+F
	 0eG2ICGdtCEJo4BG8Ld4OjQOfMUV0Bqf7tX64xo33essOzIN1NIRtMvTYttj6aAY9e
	 sk0TMpxk/kOHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A588EE78480
	for <ddprobe@lists.linux.dev>; Sun,  1 Oct 2023 19:06:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169618716866.24834.16755651615732193559.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92333d6b6ce6151b4a6a61cfd3684a29f8c72277db72b07769d606d3a66e8ef6
Date: Sun, 01 Oct 2023 19:06:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696187168
