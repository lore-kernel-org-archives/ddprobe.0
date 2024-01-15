Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 071076FC9
	for <ddprobe@lists.linux.dev>; Mon, 15 Jan 2024 08:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b8JpooCt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7984DC433C7
	for <ddprobe@lists.linux.dev>; Mon, 15 Jan 2024 08:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705306696;
	bh=mkCFnjOvzxokAqjlDgc3YlNClJamzqcAv9Rwb2wxXvw=;
	h=To:Subject:From:Date:From;
	b=b8JpooCtrw2MMs4SJASbxrMBKGk8fEqhF/kXeZsapolDjV1qn+0WsyT2dbB4GaUNy
	 0atZ4a04VzaouYBt9DsdqgvdzJwGDGXZjlNiWJ1AwJJ1i2GaAZBCLk6eTgpP7nwKG5
	 Aj9ij8btvX37cVLz6RyTAbm3eAPHX35W8yDN47+7QpDceCBD+q6QT5a1oS43Knf0xM
	 BXYJ+O6QuN7A59NPKfKAFRWlJVoFk7GLP0GUxDHrkFu7r4HEgXXCs5Ar49s7OzS/V6
	 RGhoxfs7I/5jQ/ZoAFRFDjUcCm//0RsShRwaDwLN2UIhjPGeMV9IDfgXC+VYiIlPwA
	 0ATUAU6gWKL3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F7DDC3DA79
	for <ddprobe@lists.linux.dev>; Mon, 15 Jan 2024 08:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170530669637.11985.9609707305939413511.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b141f8562af89884f41682aa4cf5519fe2433bcd62748d6b792a2eca405ba93
Date: Mon, 15 Jan 2024 08:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705306696
