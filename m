Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61C3D158D87
	for <ddprobe@lists.linux.dev>; Wed, 15 May 2024 17:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715795543; cv=none; b=K1P0sYbPhQN3z6Mcr1kVELvs4m1KYwQ8HcrG6ZOjVbBfnvDRNjEgfGDH8J6oTywXRK/CNkbGui/NlOH9ou4C1fYvzEP5adydDNLOHyM2ITdHiqXTyEBqdID1Z6QaL57WGisL3FJcEIX24PlSRo/AAvLHQnkL8Zd4sNX44Xpj63M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715795543; c=relaxed/simple;
	bh=o0FTuPGOPn5G+bp8sIHSHr4gnlhH7oYhRc7np2fD/qU=;
	h=To:Subject:From:Message-Id:Date; b=ZTi/63AbUmZ+7hszp0Ac9OvkRwukXzVG4WKijFkZs8wXZXibm/Z4G1QgqxByD5SGXJ3hUlbVoiK8KkWRGbRqo3TMxl5M3HGuq0lQYm9Zf9R4vf1syM6QxtCkc42UXLf8aHzkDqekssfs7tJ8SliG5KdvT0EDQXrjeB5o4AbH3Ow=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nZcfIXaY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nZcfIXaY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0C0EC116B1
	for <ddprobe@lists.linux.dev>; Wed, 15 May 2024 17:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715795542;
	bh=o0FTuPGOPn5G+bp8sIHSHr4gnlhH7oYhRc7np2fD/qU=;
	h=To:Subject:From:Date:From;
	b=nZcfIXaYF+yiWFHdYD1TRGVG9dTANnzbF4IljbsKCgOjyhg3jo+YJiwqdRZhaTYIu
	 4YbQc/viB/HXidxNy12zEUQpxIxNmLbokK9spzHN73zwTuzvYKLElZ0J7Z3k0DZunn
	 rxga3pz88ZJUicgI9YNm4PIZOFwTryJQou10QQp/slo/NRxyNlYH87/kH3Sdu/qcYG
	 noQneNIdu+BZS8itvkSbfKNZusP/UEHgzTWEXnV6mF6ugwtM6CeSbl1hytRNd6XMsW
	 q4efZ/74QVDUUL6jAVq9I/j5OJ1SIse1iUi4AFuHFSgqrmKZxZT7u8S6TdKVoax+Vf
	 DktibYxDUnyrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE354C25B75
	for <ddprobe@lists.linux.dev>; Wed, 15 May 2024 17:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171579554281.5362.6950341956640032245.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5fbd7e667cc7529f148b4d686598699e04e493c3d3bfea02febee450ff608f2b
Date: Wed, 15 May 2024 17:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715795542
