Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0ABE120F5
	for <ddprobe@lists.linux.dev>; Sun, 24 Dec 2023 14:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TlnoBds6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82C65C433C8
	for <ddprobe@lists.linux.dev>; Sun, 24 Dec 2023 14:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703429296;
	bh=fxg/dl3KHaTKfWGdJciJcdllL+lF4ewqWZR8oE8dyGQ=;
	h=To:Subject:From:Date:From;
	b=TlnoBds6pMXSmwJTeyPPQH+Dk6Rb6zVgdDAckOO6ABGj+HNdv2jxhGLmjEzXX4Cfo
	 r5ByKHZpgr6J8hU9o+9yDxV7rX4LCHCH7PwXnGEWBsGLLOdNmK5EcwIqoC67RegoqO
	 ZKV7IWiDL4CkXA0wrUWQE/ULCRSkLAK561nZ46tEZQzAHL8FoqCjJk8zT5vQV8r+kB
	 M0WI6KO2i/9yGRzyVr6ejsbo/1/z62ndMALvTg8ZFHHTEeqKw7kXx6W0V2pakBAqz0
	 4+/n6VF55xAI+n2i393x8I8R42Lxc3TuuihS8X7Pk2Ycmr+GkhYKUHiQm/3/AKpMB3
	 bfbTho5xrvywg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6954AC46CD3
	for <ddprobe@lists.linux.dev>; Sun, 24 Dec 2023 14:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170342929639.32173.11653181083543911345.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3259648805fd57e9fafc45fed2dbc5a1b9bf5df2ad404efef285ec656326402
Date: Sun, 24 Dec 2023 14:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703429296
