Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 638FC36AF8
	for <ddprobe@lists.linux.dev>; Tue, 21 May 2024 04:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716265943; cv=none; b=Ymc3CC9azPevVIKbEUd59c9GF7rfqXaLL8B0NDwXNbuRc5CTPOBrxz7eUdzD8LnlP8zYHGa5u9dIwZwN01VJgK0r8SpbhwXJ98Lp/cySo1vo6XHoh7uiaxxH6qZODt30iTP6kKpa4g9bIk5RUxOuP+cWHT3u0B/SS88JlI4228c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716265943; c=relaxed/simple;
	bh=QVXv2Yt3L0QdBuPn+PEHLMhIrUlYY9rGGMCaI6L57jg=;
	h=To:Subject:From:Message-Id:Date; b=q+VYdRjhUD/B835uG4/i4pc+TGi2Ps+0Z4VvlmAPwO7o9NchJRwIKRAN5IApk4JdgJ099QEOFjgyUsbyWXTECy0jvn1xCYCwhEOtLzjgKdPOT7A0Ja2VvROOC2FtbT7qfPEFLAnFIlAW2zFUL1l75U2yvCk4O489JCqEZcVw2YA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ikNfMquY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ikNfMquY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E9A14C32782
	for <ddprobe@lists.linux.dev>; Tue, 21 May 2024 04:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716265942;
	bh=QVXv2Yt3L0QdBuPn+PEHLMhIrUlYY9rGGMCaI6L57jg=;
	h=To:Subject:From:Date:From;
	b=ikNfMquY3NIpylQlIFyIavkeSTHxZvrgEo0fL4YkSIcQFUJifMaj55OcVAkzBHC8/
	 NV4ylqB7GiKZe0AcVsRzM31FaCiWmJfPJXjPkGrqxYmHJpAzQ0yipcCA1sPKTaU17/
	 bDNXm722MKZSlGA0MkNpZdrU2VyU/R63XAezQvIgV/45K/2EYEhK+2BMgJxbfXEiuD
	 O+SiSGWyz0v9LI5UkSvCubHVj0HORI9LaW6sU7zH75fYel6gE/ATDFCJPT8fFB69j9
	 dXmVnEPKKd6l+yqZ1gWi80ZGTnQiS0iFQhLTpBdVPSKpok9D0KM/ZUEMYMbbPoIWgx
	 7Tv7bCvl74/+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D1F11C25B74
	for <ddprobe@lists.linux.dev>; Tue, 21 May 2024 04:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171626594283.10218.1176884610316397875.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1ec55f2b562641e929530b000722f53389a19e439b468635ab0584b2cff2852
Date: Tue, 21 May 2024 04:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716265942
