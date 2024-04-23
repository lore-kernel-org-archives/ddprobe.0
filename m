Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 612CA1411E9
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 19:50:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713901823; cv=none; b=fOqbSY9suw8AIGPx+vaik4aSRWucDTmQiZhONt8dfWZuUgYyETHOZY5d4pVxvmowcGjXMd05s/JOAo7PieMsG9NDS8O7a6UOx78ibq9pjCz9EfN8avfTK29bIiFO7iqiUWyRhAirUYpubTKm3PFG+Y6gfWvz2/+JA/q1bfdRVK0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713901823; c=relaxed/simple;
	bh=jwrMxoNvHvwACoKXDeeWAJM4bskV0xud9DDT2s8ehPM=;
	h=To:Subject:From:Message-Id:Date; b=GQ+Mseis5uXS9w/L+az9bcTIUakuk8aIGcSbJvLp+xaV8L8+xnRgxgVpgozS09msBcEo+/zg5pyZTpGxdxt1txcGwIj1q7z3GnuEZtrjQ9h1TwcoxA6FiO+Nz3w8npZuGpnQ8ZejWGY+vOsTSY7pUuT2gO1v3ShmNyHObruhCao=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o+qVgHDJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o+qVgHDJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D622AC116B1
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 19:50:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713901822;
	bh=jwrMxoNvHvwACoKXDeeWAJM4bskV0xud9DDT2s8ehPM=;
	h=To:Subject:From:Date:From;
	b=o+qVgHDJbSYstKtFb+eYpLTWK1A/rDqv0CsA4QFA6dhjd3R94FTy/ta33Y8e+sGUv
	 ItETYnEhaOWbBBhgx+K6HMCsyp4UALUsvJNYi8uO7+Lk5rwfVuUg9EbEPqvAYMiYFx
	 OiDtp4KntWvvFsdTPmQWS7SULAQ/qus8zBDpEW8ZFQLFq8dX3bymVAqq5QmpLxtYnr
	 SaKbwc3N3LFAXbTFRUiXm9Snz24se1KUto+fxPhNCVoX/bXzanoBZ0lgoURuYfC2vy
	 v42+DiiDaWsSEzN7OGE7TA0VY1z03i73ojVs4x+/Rb/hL1bJEP8JEeoo7yIEYQnZFk
	 9DmrlPzkNMnIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3F58C4345F
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 19:50:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171390182279.30116.5034363890445626659.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2514623927b56efd33f59273bf468c8bd45864e0fb29516e72cc6348fd9a960f
Date: Tue, 23 Apr 2024 19:50:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713901822
