Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48E0A161
	for <ddprobe@lists.linux.dev>; Mon, 22 May 2023 00:03:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4533C433D2
	for <ddprobe@lists.linux.dev>; Mon, 22 May 2023 00:03:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684713785;
	bh=72Y82IgykpjjhEuUytaWQwhqVYzJgyn2OPhi0O+PPYo=;
	h=To:Subject:From:Date:From;
	b=SuLLEClK5W1CDX3vHvbe8E7l+0ZGhuvKGoMfKRlkIBURjTE7fQBq31Rzjtd14DZZI
	 l27H0xa8rZmm3hcNZtSCvX9qU7jVA0MQc10/XKVIvTiFiH1YcodW4JAse9Zig0Fxlf
	 1cgzmQOkpVnNVzUPg5wefohOsmUGcYkqFw2ZLVPMG7rz4+XdlZAIbR99bK4byWD7Bp
	 zMPu3SXX/hH9PYRK9XxvYaC3Ob3zrIOxfUvXNGaIQprkRiLtuTNNSRBexR1hVuD+mM
	 v2RkCo7XWfTQsaiWxX8xfJSyBYforVT891+A/WhF1M3Up8RNEJbMQorrnKhd5sfux/
	 ftW64DCPx2Lew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5CF0C77B7C
	for <ddprobe@lists.linux.dev>; Mon, 22 May 2023 00:03:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168471378578.2261.449430902834965585.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dbdad925e4c0c1c59ad497267349920e097fa7c4672caad9c87bc4a65127d6b9
Date: Mon, 22 May 2023 00:03:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684713785
