Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8490F155393
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749776994; cv=none; b=mKtSl7ui8eDFUYCcJCV94NMKqYLVqfqQ5GAf3t/OvcBNB/fV3X3PLJRLwakwgFqn1YMk4r/1quhTZ2wtvXoOW2ye8wkiIYhKqcQK5+W6lvNyPpMViNKxk0DVcqPPUH/LQtnSq4I2MYJ5WNacwOIbyG91uwbgwzeoUy/5BNgrGpM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749776994; c=relaxed/simple;
	bh=A/sT7TbFQf1XW+hP23q52rBD0dAhxFLvQtAqCwSMaUA=;
	h=To:Subject:From:Message-Id:Date; b=lzzQ9ZSZebhGvfMCyLrSm7rdyEm6tU9ian6tXVurnaxd8W5RHJHmBK12H5E0pVlyfwFf4xEXKrFtbAzQH9+sxAXRdi4SZrIMJpnd0ybcP8DQ3YMGw+3ho6kz6vbA4KCNmO/GK8Yj1HBYluSBIPD1yk9lM6DxCY0VKmTrIyk1O6g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aVAvnM5v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aVAvnM5v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFD9EC4CEEA
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749776993;
	bh=A/sT7TbFQf1XW+hP23q52rBD0dAhxFLvQtAqCwSMaUA=;
	h=To:Subject:From:Date:From;
	b=aVAvnM5vxHgJFAl71AC13noZhrzN6GlKB/oRHN7ORg9QPzoTPhg1hhRK1rAFkJ4LQ
	 Barp1lGiuLROKNNcEu3UjypsvJPORtJayiLAJX83m1UlGNaSk6yJz4J6xK0fUf4oJ4
	 C9ojFjcs7tW2pxVu5xHXzNlCWqoHx/DdPNSr9oLWUYDTvVE/buYUuHH1pLgjFfYFZ/
	 pQQSw4hGbP+ecHuudcbWgOFFX75nKX0iU5xC3YzhXTtuH81UFxolsW94RxVFLrugcO
	 wIzq5+A5yQhHJ5Sys/1mbA+QIZkfCDk/Y9XdEt5ijaspbH0tGp1TIp2XaWk26227c4
	 fs55lkcjYVnKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99C73C61CE8
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174977699362.32757.14969007846753181784.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cacfb9e261b5160887a4a954a1d500d309dad898779052c22be140c61b0fbfb7
Date: Fri, 13 Jun 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749776993
