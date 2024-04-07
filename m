Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2B811879
	for <ddprobe@lists.linux.dev>; Sun,  7 Apr 2024 07:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712476697; cv=none; b=oMf4+kec8nlfqmrEyMIc/p8X1XwCxY3HYNEVbQOqgtxOYTAw2+/afrlelHgvNN0Z8TUyv2rhWmYZlsKtcAgAqG5F098KlYhmqyTD7q6FBKNhHmA4QPC8fpCR7ahQA0Cwh6vc5RFGLhvK0r/X/QCNBU9AbXwuvISGZiQ5Ps/iel4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712476697; c=relaxed/simple;
	bh=JMKPPryyCLBC0otoSpVonKfenUPTkF601RJH886xYUc=;
	h=To:Subject:From:Message-Id:Date; b=UPCsALG9vUai36kjoO42vum8uYjfb9Su8X2lTSq8bq6OLjlYTn3i560H/Q4eVjBjD7NtGvyZi3KZw35mnMcrIufuJ6/n6PTmo0o7FZRo3FVYg8BB7jY9xZwN0nDwjJj9YTmlMwBMbxTFjoOFvDthvTDV4xkNRy/9hjIYaKW4EQo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E+hPXGX8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E+hPXGX8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 760B8C433C7
	for <ddprobe@lists.linux.dev>; Sun,  7 Apr 2024 07:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712476696;
	bh=JMKPPryyCLBC0otoSpVonKfenUPTkF601RJH886xYUc=;
	h=To:Subject:From:Date:From;
	b=E+hPXGX8k0CATGo2ekl0Ume+kkbO8InVeFb86hN27gy6iOfYe/NCGsaZeEPW1GIU9
	 Evw7uHTHoUhqBkgitEzmLp75Q0QoJO2PcrLtu8rDEbCV9Mvs4/J59MAR51mYBj5TMx
	 E4kqlJdHs4D1W5jWkyTSiD7phBFgUt9my0egS84M3XrxJXouku0n5YoXzhvmbfbAoq
	 htrDeQfzVMDMGM2Pwy7uS3J3dS4GshTXRgfYfAADUGYQ/5RhQ5WIj9r8huNTKUMmjv
	 w5WpwoGVnqK3zsTfwT5I7ubOop+qcXcfVEaolxGYra3fNsbbpXAiSDfQol1pa2qC0K
	 EFR+Uo293ljmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66855CD11C2
	for <ddprobe@lists.linux.dev>; Sun,  7 Apr 2024 07:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171247669638.3066.7431546844858835458.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c540e731db535375780ddf7b00137445b019868d973eae56a31cb9cdbca0457b
Date: Sun, 07 Apr 2024 07:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712476696
