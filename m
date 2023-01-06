Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8D2D7B
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 04:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8B035C433D2
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 04:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672979487;
	bh=fBeEDJ26f+mOD1FfvGqJihwK8MaIpG9IbJfRkUJQadU=;
	h=To:Subject:From:Date:From;
	b=oT+fom3EM4vbYYQrFXuW/csQ1UybRFk5k02dy4Uu5Pmi3TryRayR9xyyruUXtOLeW
	 6WlNHHOOe75fbW4mGNSnTPaPl6EYuJuvzMSn5U502JHnQY2ge/qYgkMQ9pVKzetOIP
	 SE1chq4CnoFKDMOnLXyCdEcL0Ty6JbwEShsTiheFdc6HUgHCg1+uOejp6JzKNgewXW
	 uW4x20w2VHdbJj9e4vE9gvaLVuaQpBAI+r9EVtZJoyCnXitt+cQdeYjKYjPh+zaDMq
	 1wuerYLd16kD1+KiFs1lV4J+gkElclmD8x9e2etnQNfK8XvINewiJ8FwtmRdig8mVJ
	 NB4+z322Bxe4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B8A1C4708D
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 04:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167297948743.8563.16449732034906250614.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e47f897a11c235f2efaa63a0a3c2d7789ce7a9b2e87fdf348510115e6b6e29e2
Date: Fri, 06 Jan 2023 04:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672979487
