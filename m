Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0E412511F
	for <ddprobe@lists.linux.dev>; Fri, 24 Nov 2023 19:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dx0uv88b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7AE8FC433C8
	for <ddprobe@lists.linux.dev>; Fri, 24 Nov 2023 19:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700855296;
	bh=U0WfyU+6kh2QzSMIyslL6MHP3C9CgO1cn30s067O5sQ=;
	h=To:Subject:From:Date:From;
	b=dx0uv88bFzqu9RfEtAjDdp/lKU+LiUcsi3eFJJRDiJn9XWJJdoUKHjt5S3yxdt8D8
	 cEgm9OrmqZDwhFxECe6/Sp8yNq3jB95D/5evYagcycCYY4c25niDJzsl18zusGiKoG
	 Z0ktl4OtkdX/aTNP3gcBX8OwMK/KVhxkPiZJjUUaplwxOPR8YmKG+SST+5j+hGIgUx
	 5v2xjyGE6ypFdpfbZiGHngYtnudvonMDXuioyIyne5gZG0RkJ218EmmbRfvOvHJi9x
	 xNb7PUlt7AUEUevsqNqhQ5nm5mPS5l1RRzDYKNgMTIX7AZgTIF8CcJpKFhw4C/vBXM
	 1NVzgkI5XezAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62BABC61DF4
	for <ddprobe@lists.linux.dev>; Fri, 24 Nov 2023 19:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170085529639.6457.7573961152763870255.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f762f0c07e332446ecd178d49e47226fa8590f1a873e916c035c98246739f48
Date: Fri, 24 Nov 2023 19:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700855296
