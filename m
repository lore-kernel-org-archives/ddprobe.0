Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4C5E33E1
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 23:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 814E2C433EF
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 23:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671753087;
	bh=WYhR3Ysnd3soB4jcdMuixeTpzoSRGFjZSJcXuhtzXdA=;
	h=To:Subject:From:Date:From;
	b=UfsA/xnMxRY9a7CXtfpmx3QHUxflWjrmVWRI+srX6tRhWW0gQpb7s0N82+CqRuwPv
	 3eRuJiKKDWsb7l0pgf9PofFnPGdFMcwi/cdGsvAFbQjWgoZPBUPrCREYRkqWXy6YwS
	 CueVLgi1FN2yLmarsFCsk7LsjjbeDdlnRlUV5rVxlHFsgfVE4VWTbYEOdjnsYZRpKh
	 PZH9u3wJdODvyhIUQXp6Y5zB0UAWYLlNQuE4TFaAOIQ2EHVv+OHXJdRSXa4nNvXASM
	 AbOpDrs+YguRHpdqyzvxM94O/wvxnzB1SUvkMrMisVRxT65qrfcS/Z9dXm5j2evzZA
	 N8++kmwZoUBzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61D05C4332F
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 23:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167175308738.27221.10883746977391230256.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d23b0a85892dc36c761f72990a16f41d0c9d6692e254c27c36df9a1094a7d7a
Date: Thu, 22 Dec 2022 23:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671753087
