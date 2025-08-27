Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 170CD313555
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756332594; cv=none; b=SReTvd0n2y3EjKej/nrTss4pCXKr1eQvG8MaN8nujox2ASmlNktUJYLv6V1mBW8HLwkwV5pmkRQ0UNzc/OzmXWPGoFKw2VO08tNceROXTdrPqRJVQqgA4XBZRgAgZNUdo0fMaONqOujmmmyDBZ/2HUnXnB0itYwYRucZBQmY1RI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756332594; c=relaxed/simple;
	bh=Tif0kTWZYhrBDZT3XMlreNNzfiLcRF0bkjldJGYmWCA=;
	h=To:Subject:From:Message-Id:Date; b=knEZQN/KmzVTQ7o1lwIy7nWDb6PMzlaswsWfjkH+Pt4/j1Qrin3Rs1zJI9GARw1+SUt2iUe0YpIjJ6xhEH9gEGoZOsmjKOj0vtZUUKj5rafVFf5SNaqfFEHaabS+kLjWfpLLqEzMFDkPIzR0VSVptIM6+Co9Ne7HyjpIDi8eOfI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LBRvQoIq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LBRvQoIq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EEEBC4CEF4
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756332593;
	bh=Tif0kTWZYhrBDZT3XMlreNNzfiLcRF0bkjldJGYmWCA=;
	h=To:Subject:From:Date:From;
	b=LBRvQoIqGv8vM70UFgfeB+A2A2jVHJWUfWvwwRY8zL3Me559pbZcgiPY38IJ9oYDK
	 ZK8/57zqtLdy1ryi+lWSisC3dMtqdFr5ItfdjsqbxP/ArseI9zysNacO9UoXagMFP1
	 h6pL086zqjpwOL8rIfpAfehdwfpnq9T/OGCahTSwqM181i2oxAoMA73uDMbHo3cpCF
	 jol5N6mlRFr4+a+zJO2ML9vDKRBQVBP7aScFFtFj4jDDW1il+ipWBsmT5sSHVAv/iy
	 cVtbPLt8fmF1Z5tXLuQDoqHHh/bYKS+n/xG8AdNmfMPGQvxfQ9m/IUi/K9fgXBsBDH
	 tqq/KWwN1TgsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 904AFCA0FED
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175633259358.12231.16614003859468648808.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4aca91898a2f6c54abc54f74d2d50afeb2d5d14dd3f33f0638f3afe7244f2eb
Date: Wed, 27 Aug 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756332593
