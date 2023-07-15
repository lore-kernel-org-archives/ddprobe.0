Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F82A291D
	for <ddprobe@lists.linux.dev>; Sat, 15 Jul 2023 20:01:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6F95C433C7
	for <ddprobe@lists.linux.dev>; Sat, 15 Jul 2023 20:01:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689451268;
	bh=QJWQG0yMOz6Gw0PIw1J8B2Jt+XaGO1CfdiXlohl1Ra0=;
	h=To:Subject:From:Date:From;
	b=qlscLdrqr9ZIJjD57nimC0JYt4QN2tM5cmLHYaEKUWYolZGyQaxZYoYwXZxp6xYzG
	 tgEek10jof6AiT7B2UPZJNnq8ybzKvoXysiOpw+EMk3tBEQVKF/NrTEdj1BP9kFIDx
	 XC0Bicbv4jyalaG3z1ITMnGfJFXvL+8lccPrf/hiAmJvxeRCYCGIIoDceHBFcx3t43
	 c6GO52Hduinkxyu6YN5zf0E70sBz4X/oprEOn9I+4ITKVqT4MMDgQgxmJmbH2lnwM5
	 WI6Z3B2AEKR7fniS8cE4v2/E2aUwZH9fHtTjvLXtGCkEo8goIlhcYrbuEgqYNQ4xb7
	 kbdhhugSsXp8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5C4CC001B0
	for <ddprobe@lists.linux.dev>; Sat, 15 Jul 2023 20:01:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168945126867.31723.18014878004856478338.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa47134fa216b50ee8162c5debdc0c961ce838841d318267bd5c76a741ecde0c
Date: Sat, 15 Jul 2023 20:01:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689451268
