Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7EC53E833E
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 11:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783422514; cv=none; b=r5sSepyh7db0yBZmZV690bvQQluZLKDqcn97hZGP3A6kMnq6+Qw9i9VfvGSpVQWqUQtA8WABv8Hh2wUjN0JW25dQzaFkjak38qpBv3H0vwJ2JmK43+lEvo9O08xqfiH1kB/ceg50b2xhwnmFd099w4nz7vKphR3Q4NXvVlfMcm0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783422514; c=relaxed/simple;
	bh=1bS3zGmVfgegxW3EQJd0K2Q1rN/a8kaNAYPRY+dTwmg=;
	h=To:Subject:From:Message-Id:Date; b=Z3WItqvRqUHAB9/huNBH0BHdeVUid0UxE974euyCe2+GCuJpV4SMMH47/KpyeieH+pSPhrusRSv1IAoRkKxK6gWYngBb0GY4ogp9B+5BqstXvyHz0TG1rECJ32uTL+UhwmAJssZzdaIVDcfZ6SOV3DwqfiQ0t5Wz5KMmHv388RA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rH00URbO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rH00URbO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC692C2BCB9
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 11:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783422513;
	bh=1bS3zGmVfgegxW3EQJd0K2Q1rN/a8kaNAYPRY+dTwmg=;
	h=To:Subject:From:Date:From;
	b=rH00URbOkoMp0EUssVmMoFUpEHJmS+wX+r5OfMoamC+SrK3Y1Bqbul9iOw8XnitMX
	 F1uZeh8f6e6t2uAM0lK0lASVjeEb8XlkrZQvcyv8bspu9DlEag0J9lYyxACpSgv+Df
	 OJL5/z/fynM9jnc18PLOMvwFiyYhL/VK7jdQdrln1CRpqDiZF6uWCmjjMmLOigVAQY
	 1pHvNzHC/lbBrDGEM8AcPmHnahk/XxxXhxLNR0/H4mpySLe6CY12reMKzumxpHKRSD
	 r8eZ0yFkrBuP/5M7+Q+raBZ8ylsS5FM58rP9QqqPxZuecuBooeYreuXXGpKCh/WrKA
	 XYH2LAK0eHpfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9A3FC43458
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 11:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178342251368.2161.640011388221181338.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60bbe5c4ce62c3d58c68373b51f52d1347f0b149dd38cf7b5bbd27c6badb6082
Date: Tue, 07 Jul 2026 11:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783422513
