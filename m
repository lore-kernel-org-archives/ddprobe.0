Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B64D515AC
	for <ddprobe@lists.linux.dev>; Mon,  7 Nov 2022 01:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E00CC433D6
	for <ddprobe@lists.linux.dev>; Mon,  7 Nov 2022 01:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667785254;
	bh=Lrz0yXwbxsQc/fkhoT8Fc7v4jJTn4F5s7mX5C/m7hzc=;
	h=To:Subject:From:Date:From;
	b=HY9ysm/kwb+X8AUsV3/SdMaABQHIlWrziofsbcu5RP1mjjjZyIbciGSOrkTaYYLTf
	 t/z6lCEHR3SC6FhjohBVIyZbozdbZaB2qRUYak6W7o3DWGLhQH60i8igsL+KQxPEm2
	 a1hD2efgY/9c8SDJTIwktRLnejMk8UFRNVxYDCgPQoo+YbAZAcs4RuvooVvRzJNn/y
	 19w4NZHbKr0ZjBVhTK0dUW+8VqfTF76KhvrKlhC44YrF2F7VSWYHxTj9YGHUW+KpQ/
	 5PtAjRJ6WgZKAPPUh9YBoKnxnOn5ztvZ7aDF5IIz5o+nvJBs4NuPxx8ajjcwHDoLk2
	 ABOGh7yRzYMpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5368CC4332F
	for <ddprobe@lists.linux.dev>; Mon,  7 Nov 2022 01:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166778525433.1441.3059410935191104911.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eacfacbbd7a1e17968937b80350c53fdbc048945c9cab059b3157d8a6d7f3812
Date: Mon, 07 Nov 2022 01:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667785254
