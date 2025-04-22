Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35021253F1F
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745312994; cv=none; b=pZDM3kxaDgfhcb7CvwntuO5Bec7BbceQ7RvtyeM4Bigex6e+o7u9rdU+iJXoizc8DAAr89CjqgxSrdxzGxYVvcJBxEmNYygX/jfyv6KQa0Wdo8WG/vJkOdjbESJjyHBLGZwypKg0kxRJkOFtNoFTNmcNOT/QgDbcpP76MIUq+II=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745312994; c=relaxed/simple;
	bh=NVxEfr6kqekAcQ9CYZ5+XVyi46USiS0pruo1IXkkd8w=;
	h=To:Subject:From:Message-Id:Date; b=rZiCWwVQnFadtKq80GjqbtTRgSnHsC/I1YigLh77nQ/YFAwcUfWce70W66oyx8KcqXZPk20Rm8Fi3k1cvVQaqbz7tPjFY4qK8QaJIm+W6IC+ADYZTXA70/Rw+neZnIZeGTYiJhfygIz4/PMEfLUeM+GbJwDOgqBL2TsG9Earq3I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OGmqyiVO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OGmqyiVO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4C56C4CEEA
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745312993;
	bh=NVxEfr6kqekAcQ9CYZ5+XVyi46USiS0pruo1IXkkd8w=;
	h=To:Subject:From:Date:From;
	b=OGmqyiVOGdRVlMD/7dpA9ukklDxMHxauHVmH1bQcnV1ZyCfG6w14YdrZriMl5K8Bz
	 W8a0LwU/1OrrcAEVaJj+DxwC9ez0LjgZdDxbWcp9qbqDJ/gY9CnEuQsmtqCuQ1Z/fh
	 oKIuOFLTc220Lzgk+GGLix3oVk2H6Esz4S29BJuV7F763A7QrtGgSTw6lrD9oSKyTY
	 twXUvgTNPYWGyGKrB0pdIEzVJ7rk7/HC9ctjHdT7xXc29jlF83B/aqVdol0ENMT9dC
	 JvlHvztwy4kKPKlAlc1VPgD80Z8dYRYxNx3ASBF6SSlKAquw5Rb2TAXT7TdxmyO0zj
	 yH5u1mjHbTfHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4624C369C2
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174531299365.9696.1396411731857510922.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ea52de2eb9f475e971a0a266e1baec0947477242b094423e5807df7ec430e68
Date: Tue, 22 Apr 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745312993
