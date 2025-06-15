Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 243C3EC5
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749961794; cv=none; b=T18pQawevkK8OIt205h3szsOY8wCLw+NirRJWRu7z6oHzN51EBycTdQNNsr6XiL1ra4UWLmoV5H8QCfcOfJy50z1kUfCPfVuBHuTnPwUJdMFao9LZJpkECPJ2Ss7q3QZLhLp1aWNqiCOAGzRuMpYSKAU0C/ea0aAtp8Ou7TDtbw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749961794; c=relaxed/simple;
	bh=6PZIU0UCUBQefwjFjIXEjdpsm9I7pWQR1vnuenLi7AE=;
	h=To:Subject:From:Message-Id:Date; b=m6O82w5bdQBjI3Hqj6x97IxCdFmcKLxGRk5+0qDRfFVnqzTR9yJykGXXvdXvtDRNmWtXrlYAkt0VsPMvGU4NFbiNfHkC4UF/991ML33EgApe6ys10ZN+H0cPbtEkG7igFss1uvBzJZffRbx/ttqwVyOUJRggCc+RyT1Mk9I8vnQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iAqYWklY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iAqYWklY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEBCAC4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749961793;
	bh=6PZIU0UCUBQefwjFjIXEjdpsm9I7pWQR1vnuenLi7AE=;
	h=To:Subject:From:Date:From;
	b=iAqYWklYSQOyy1gnGSG6pqZG9j4fLlEWu37GnGyUigk9+/WYO6wVqdHoQIbX6WW3f
	 e+nxSmHZF6tSFEfWpb8IDixgaFu0AvzEcRA6OAGMtGg/6aNcIyCTlhBvTHEoUlQ0nE
	 ID9oc3f2iNeDHi6MJPmrmNep6MQ37ZA17PXdG2VQlX3yyNizdo/oA/xI6Hsx8pHO0O
	 85Oj33h+DQHJyvhKcvfFSCIesA0u0rNgIlb/bVjnZLeLXT/loH0rrjbQc4rvQY2mDO
	 Jip4S+lysilX95dtu95uaH9jvapHyPFVJnA2OY4cLfZxFa0q28wLy3jTOXR0UDfNkg
	 0ZHsFa/yGYPWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 992FEC61CE8
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174996179358.20383.13787400081614530286.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8fc1687bd41950a54cb3e51efd9a91f431ab8101aedfbe7a6eb9764785e33e82
Date: Sun, 15 Jun 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749961793
