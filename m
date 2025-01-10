Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E6862C9D
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 02:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736477754; cv=none; b=kPSfJJZ1UfJBlNrBqLbzDiMnI522i1+BXnkp+MNqQT44OTCQzqYp/dwQhLkY/8U3SFurz/zLom9h/kNaZFvz4TeYo9eFvhEXhdVDhG9yvg6jjoic9GlfBX3dOJYiqTHgvwRicVUpxHSWzDtH2NmMQsptZ/axPQgmSr1Nq2IJ9yA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736477754; c=relaxed/simple;
	bh=ja4nNJsJLFNzXg+N3CCy/barErUX3XYpVVdl5P+80jY=;
	h=To:Subject:From:Message-Id:Date; b=W/iWdoGRcgqCd2ela+8IXyB4UzrgJdQ85l/PylHowvD6G1DLr/hlR8JT8UaUIAqoQNiaa0qCU3K/lkJKZbKBuTkt4jg5PY95MnR2jTCkjakM2cexnCZVXgyN4obeNOPV85fIGurH5N6opCCKuUUq4zPkNQnzr2cp9DR3oxDLf80=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c9oIVCSD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c9oIVCSD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF14BC4CED2
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 02:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736477753;
	bh=ja4nNJsJLFNzXg+N3CCy/barErUX3XYpVVdl5P+80jY=;
	h=To:Subject:From:Date:From;
	b=c9oIVCSDaTuz3eX+y2mosX4W2utRd/wC7DhLnRC8+qM+Rsb7BGTcvi0r5epZ2ZQxG
	 FLe5PSF68dheH+1fyGOp05wG5h9KrspsnBx8j5HGNEXgAOxurHR73hJ2icddh23yFl
	 N1qu8IhQ/n5JYXjucmtboQ6Q/XgkAksWlSfwK29cjWRROEhY6RSHf2j1ZXQW9MK4P5
	 evB3mOZIjxwwIwCrnN+i1oryoRhXMZfU0dVSHwwkDGMnXuJCo1bgJPSAgKkeW3MKVe
	 TwrLox9na3L1/3vXvaosiXlGhmPSmnXiwKHLk4M2J40FeXapY24j3I3TzU+mn1zccO
	 LW3d/oaJd+QIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A609E7719A
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 02:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173647775359.4380.403662543332582202.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4858a571d711bb9609122a8f9257de4e33df9dfbe8ee6e429430726ee8d3eee9
Date: Fri, 10 Jan 2025 02:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736477753
