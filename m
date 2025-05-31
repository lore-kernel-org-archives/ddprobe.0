Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FEEA55E69
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748679595; cv=none; b=sa9HWOPkJbp5lhvY2lQ3q73i3GV9vJ2QIAC+GAzz6lTlZ2F2txqVGtDvZLYY4HA/F+mdCcmPL2hbNiUGqx3+J/SLICLpwxvIvAP2+27ge2cnRkMXlwoDSFMKQRRrcEt3AZugM3T3Trb5lJyQDMBqqbEdfyXIF72Gy8N8ukGtzWw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748679595; c=relaxed/simple;
	bh=2XXX0UijXX3ROdHL2bYiGw+u737nsyo+iqOnnz70n3E=;
	h=To:Subject:From:Message-Id:Date; b=UMkj3XuaZWU3V/XxICIuj7KhuX5w56j1qcFsYnLfms+4FvOUf0bJtZGeS08Eh04ek+2srRF1123ASWemlHPVcGMj96zD1UklCcuHuSyjtcR81BBxVJPHpgoVOMeKhwtdNoXNiwz3AIeJtoiO7dF/tdOCin8q3Wj6FphOqtFna1o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IJoI5dxi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IJoI5dxi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFE7EC4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748679593;
	bh=2XXX0UijXX3ROdHL2bYiGw+u737nsyo+iqOnnz70n3E=;
	h=To:Subject:From:Date:From;
	b=IJoI5dxitZzBHYxsAnS4RX0rBGGylDDG2VIfJOWY3DnYQwdG4eCUtnajhSWvYfHk0
	 5y1fykAQbNjJ6y5l/v+W1aG3qkf6eWC3O20N2LcB5lLuMnLvKBderfvvcRwsuMi4QJ
	 6JXj1YVVPmoZwX5PfezYH1Vvbo+qqg49e/aMyhenuE6fYmXOIlBtMquQWEYRGbfTmw
	 MlrhNWfsUVZyjoGK0XdDJpkDQKv6iPZeDXcUhKROEIIIodKvv96c/nXQ1tYw/PVqdH
	 ws2QETEueuYCG6gJ2KNA6EqtAO2WWpBAsZaCf0VofNsxjJhgj5npFJ7YXO31j3cmc9
	 pDJH1VqPYsJzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B223C5AE59
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174867959362.9869.14089581515376561204.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9942efcb00b71376f3b8a62c0716d6608e9fcb1ba398e9b43fd48d2d1327764b
Date: Sat, 31 May 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748679593
