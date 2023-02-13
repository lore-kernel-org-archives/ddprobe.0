Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33171ED8
	for <ddprobe@lists.linux.dev>; Mon, 13 Feb 2023 08:34:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1C3AC4339B
	for <ddprobe@lists.linux.dev>; Mon, 13 Feb 2023 08:34:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676277245;
	bh=FCbpqoZ5Lpe9UeyJ76zLdh3D2Ce5IIDJcY1rbFL9iY0=;
	h=To:Subject:From:Date:From;
	b=rHerIhw8uTeLeDzJ8fICPnrcnbFwNOdO47YarNE0qx6ASankTuYViXG8rTmtxjzdG
	 bt4B3lkWlI3IWRsCvRen5w12jbKN1bQ4KRjEIulN6UoBo/7GrJ6tT/ZKHkY6pub73S
	 /kLYKC+wZKRkhbfz5qJxNHAa12bZnUpFHeRKZxFMXHAYlGOmuOk/tjOH4ODCYxJFpE
	 k79eOKW3QIZAP4TObDE1oPK7gc5GmLEsTqJxQsoblUdxnPVE5TGn1CmcZv7iKRPcDE
	 dOWUnnLURef40wYQCGwvlYbwmmXHZmhxeqkZzwWmLb+FfOcDc3yd919uIbYadiXJ6P
	 VL8vL893nGrWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3314C636D4
	for <ddprobe@lists.linux.dev>; Mon, 13 Feb 2023 08:34:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167627724572.23065.7446644016362846679.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4608f32d3c3496de610a038b0d60a377c583e228a8accf8e128539a7bf57957f
Date: Mon, 13 Feb 2023 08:34:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676277245
