Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35FC12F12B4
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 10:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764930174; cv=none; b=En63gwUbHzk9iYAidxki3J7jdrzaahm9ucBv4Eq4qxEouWp+zYWXDy0qdkqXN3wSYGxqiVzVzpPp2nMxRaHq3+tvD+k67GtNFLe3W+pelL8OckF1MmGuIQ0vElsPBifJy1VOv+O9hUbf7H8G6EIyn8FJkB6jhYI6VvQ5tmwwF+g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764930174; c=relaxed/simple;
	bh=445qaOTyl/2Xj8yT38PJjas/drmfS9T/T/MM/EetwZA=;
	h=To:Subject:From:Message-Id:Date; b=TfzKOJboePeQIkx0BrpbDCya3ReRu7CxF5tBk1v7IH5GITE7nvrbRLgIpmCT9diD6E0nxqsO+F5FgNUkjWhuyUcAfOfygH5d7TGo0MGsOqJ51BA9P4DWFP6riMS8KFMT0CBYxhQD6pY52o6Qcnqd0lS2RkiAK4VQWJ9krAKRXZk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HepcKJL7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HepcKJL7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A57D7C4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 10:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764930173;
	bh=445qaOTyl/2Xj8yT38PJjas/drmfS9T/T/MM/EetwZA=;
	h=To:Subject:From:Date:From;
	b=HepcKJL7Esz6xKtwEr96+7JeMQaEzT4wWx4Kh8PTOXDdZN7MqF5zsPD/rj+AC6YJ+
	 FFrSqbk7vjAe1ZAeRWIQqFFA0E49GIdYpgG7XhMdcvU71QU5R2NBzGjjXrxJ1ANBmN
	 JOk7uCciaKwEyiBu6Tp2D3m7hyrI/8NBfBd7Vxn/J2I2bzcyfy5rjhygDFv8PmXhcP
	 93ZM+5UzabP6HIk7ETDRXuiwPs+Xe5CTiMnX6peylVpJeM2jlRXxzBCpUGFxcvYkX7
	 2XApzeR1gnJQyWxj8oEHFoQB7iNOFHjFUuiuMoSwEIBVsrUMalzgclgJVQoMKZi1Lx
	 YqUQyiPjIYBrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93488D2F7D5
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 10:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176493017358.19058.14255156817946120089.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33b0c45832c12e129fd3f17475978ead3808ca7f90c230b96be52ad644286f77
Date: Fri, 05 Dec 2025 10:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764930173
