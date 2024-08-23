Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2536B3BBC0
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 15:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724426754; cv=none; b=Dr5DXkhjwKAMbr1RJ7RPaI0EMXQY6wdW42ps+saUy1xfbb/8++rTEELu700p6PC8lJd3z21UbB4rByurdS6fuklmqLZaeZag851K5f+2yt66e7ofse2VcoGUOOeOA5RlY5llCvSEjlRXZQX2y4GFghHoxlwSTqg6PZU8nQbB9cE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724426754; c=relaxed/simple;
	bh=X/mKdlhBbqTMive+eWMFSZ/sVDHifNFfMKp+vYX73H4=;
	h=To:Subject:From:Message-Id:Date; b=Dz+u/EWCAo0BhFHoq4KV1TajDOwGGxrL+DowqbWeotAmlCWqOlbiU8X1CJr9v7mJR1ak5fqPx5tj5cgVxHCUpFV8tmX/OXG6K6Dk7NsfSn9xECoDiD6WsfzjZIoAoOeyaGGsGxUs8Qvmu9XmdC0sYN2ICghsQ+Y0QYYvTa5jgis=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d2LHXd7P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d2LHXd7P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD709C32786
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 15:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724426753;
	bh=X/mKdlhBbqTMive+eWMFSZ/sVDHifNFfMKp+vYX73H4=;
	h=To:Subject:From:Date:From;
	b=d2LHXd7PCYUgdgYsd9tU0c6EqcW4LJtjX2uCvdj3hcSCipKFvMS4bZx6DNXzMX3Tq
	 QBoDh9TkNfAocC34JXzJstDG/YhENv/kUim/SPKf62V7Q1Wwlk+ZhmuGmMzNBAYWq7
	 os2Ay2fJ7DTg7VeUc+2NhCmcNaq4KpqnuBNCoVqTOa4dk0Exg3+b9NjEPqAEd+yUx9
	 yU98TywHHO4k5F6ATcShjUmeAuyvn2nXKLMehXbGLN5LQ6H5PeMz927Nn2jA6Hhiic
	 8pAh6lwPWlJhpIqKrabkFsUDndcO32i3TmOB9V1gyHTOgsHDdgzOwBfBRNclt8NEM9
	 EGf2gnLU+j0eg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96354C52D7C
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 15:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172442675360.2759.2443346868418476410.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3213988fb3977ee5da447d247567d55247cba0850b9943e24b96c315ef943f3a
Date: Fri, 23 Aug 2024 15:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724426753
