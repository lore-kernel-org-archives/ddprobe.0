Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7BFE3370F2
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 13:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766582033; cv=none; b=Pm6bXULuLQmVJMbei95Wesi7RPvjfnrTjPQGbJMzXy+zKEt1gsgWjMVWjbJ8sq48JAmeX0KT9nM3jHEdjYmjEJDe5419UrE2BEMS+hFuff+wkR7MbKFExDKthbVqkubiWMa+LtYYMGw2ZWSHJfTyfiZw6DrvkRQGLyPuzpm0j2E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766582033; c=relaxed/simple;
	bh=boWvZlgEuhGBSDV/cKVRP63MK9GXO2N8AfxNXEY44aA=;
	h=To:Subject:From:Message-Id:Date; b=QV4tJmogEWhtN0iYR5TA8LK78V/wFLSLy29hzAkrBpMd6JdHcITuFXp7jj9CJRyrBpli2e1PYbSLfXYQk6cNbQ7kkR9K/OsECliTlAZKR81jYbxDcLngClGQkNOGG3vNe3l4tvywxKzb2voB5Ge1cYVQ1qRDGAGBREXpz1Ghuuw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mHCpDe3w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mHCpDe3w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E346C4CEFB
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 13:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766582033;
	bh=boWvZlgEuhGBSDV/cKVRP63MK9GXO2N8AfxNXEY44aA=;
	h=To:Subject:From:Date:From;
	b=mHCpDe3wG5ZNq96hRQx+zWQ5L2l5Td9nMMwH7So5Z6JCxXhDQ9qNoUsbyrmDAzH9q
	 Zh20u2mEHctigeIHZt1mpjHB1Az5xGgHZF+Y6Z4ML0k48bd/g6jpLzlCnNyhpdPeLr
	 Fa6do/sUaWfH3PEDSPytG9g+/sBV+82JavOfcFoxBVlJRBvR8BkfNY42uyR1+EuqtM
	 g+okgwm2ZW3jiC/whBwsqTOKh+7ln/wKCMg2DaNT4hQxTL7pXav4yny8fQztffta0i
	 xAI5wYInwJJr9FL8Ly06GJg5moeKXhPwYCpbEDeGUcFmdSPYrBXUWMl1e4Rqmzw99/
	 9DCU0jkXIgsTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90087E7544B
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 13:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176658203358.8150.16167572818608711288.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d571e8795934f17bdff16e5518b0ad1588ed05fec5a5243614773d88660aa82
Date: Wed, 24 Dec 2025 13:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766582033
