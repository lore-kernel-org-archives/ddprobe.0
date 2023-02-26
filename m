Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 502E76AA2
	for <ddprobe@lists.linux.dev>; Sun, 26 Feb 2023 23:56:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F1460C433D2
	for <ddprobe@lists.linux.dev>; Sun, 26 Feb 2023 23:56:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677455766;
	bh=+D4pN9zFaUPEJKREocSgdGCLZwbe04xQw7bG5q4FyOA=;
	h=To:Subject:From:Date:From;
	b=N8NYC2M4E0qo6o6Qs40HVHAkqveXkt5DQdxoCZewWT4sWyUcjQsJBp/TI3G119ork
	 twbG2w9E9iJd/7sxkn9Fwf8VJUovKzbNyD7ilWq92g/gp1wgNYNNCxZnvsKY89Mr2z
	 a+wRHDt+DaS1c7z2IYn9wkKtHQeyHg5Q/8LcuSEDFWB1aK7hebs9bXE2xpzXZFUGQE
	 RSE9cZliAqjp1EvvUifczLaCSWHuIvsbmjw40zQQ3dWp29IPJldt6E/p6mUJLlfR4t
	 8jBcEh39g1tZNhvvnvy3kKAbDoAQp2GjgCkOcbu7ksoF7qkgpoL7++SZ+hvn61/34X
	 mmZ+hjYV19G5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D24B2C7EE23
	for <ddprobe@lists.linux.dev>; Sun, 26 Feb 2023 23:56:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167745576584.18705.3769908430098206808.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9040af1ec078caade3217cb62f15558ecbbcc4622ab3a65f9242ecfd838429f0
Date: Sun, 26 Feb 2023 23:56:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677455765
