Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29D1F1DFF7
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 17:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732987554; cv=none; b=cyCWzYDxuVnrMPDVD+VHeGipPK+0QjeM+jSFgsq1t1m9kxZHhTUKsfWIIXxUbsaLIpsUdrKqJp9OC7T+NKdUq8w3udxdvOmQt1OGk0rdAdF0vd8iP3D0++GUtV5a4dl01GmljqkMEE9FWkmNll6iM8scu4msuMmVv1w6TBRxDaA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732987554; c=relaxed/simple;
	bh=3R95ESFWlEJJzBtuTuHe6kpTDANpJEul7z0DK3jPcG8=;
	h=To:Subject:From:Message-Id:Date; b=mZGW7EYtgvd/uL2KBxOC/evUNhXhyKpw6PsCpH9qEsMLGtqmf2t8cEQLkn9W0Xwfe9x2KsbSLxIVY//k2cKbU58gRJQyjkyGYwK7anLMLpbTJaAnPNp6dpmWLxjBsGJCczh7AGoWmGi+aMMmVgJH3uVq1gtVTvEhX4QcuWt35y8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NKkv+HrY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NKkv+HrY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEF75C4CECC
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 17:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732987553;
	bh=3R95ESFWlEJJzBtuTuHe6kpTDANpJEul7z0DK3jPcG8=;
	h=To:Subject:From:Date:From;
	b=NKkv+HrYZ0EQtz86E5GMZWlsHJV87jYkzayzzIKRvBaJs3sbEzILY3781LxeEtMWH
	 GlH+wFAa6JNeTt5GlsYUDFXLqnN5ktre9Rv/n4Z9SmYVvXXbsyvqk2xOxHshLJ9cr/
	 RAAmcWpRFcZnoOaMqW/a2ggtnX7lodkYmf8yLczhUuWYcThCcw6+KRi93+1lUnBrZJ
	 c4WdBAHJhfR8at2rRA5CR2pLj3xtdN/KT07HcL8CqwD2+dMATkL1NDXsSFTZzK6Z2t
	 HIBO8PS2sSoD/y5DAB+cerRQ0AHaV1BJaTX6Q20aIZ54f0JNjQUFrySzmZqP7taTIr
	 9TpPojvXJemZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 981EBD73606
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 17:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173298755361.28032.11933249416981814941.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a42e88e972ae53004bf4304807143449ce612bb4c57076c4a3bf11af17624f61
Date: Sat, 30 Nov 2024 17:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732987553
