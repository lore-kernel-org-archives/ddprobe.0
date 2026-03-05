Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EDB71DF742
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 08:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772700894; cv=none; b=JmA0GFGmBezRZ3i/hsdIPZ8OsrLbGw/btHz39KqViZUHF9o1HyeD+PCl5uzkTZiMEwUy2Oy0WTJPDguG7HwSti/C+FyJTdEXGhypJjeL0cWXZzxJ6uFv1YQwMXct1TWkmipr5y2/Y/OCv2WEOka2fXjxkEgtzOn5tNDxbNPYJJo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772700894; c=relaxed/simple;
	bh=k/ZfNRNtX2+A+cDGaFNUZLweLsV4Js4fUq/ysGNo9WE=;
	h=To:Subject:From:Message-Id:Date; b=fvaXVXAb0frmQSRXARjwEFDHydvM2EUWM+tsDiOSd7vOveUiisx8icR4moh5llBCdydYWriOJUFrACRZ/jU6GGhgspzZ3jpLPGGNnh1KPv6jQvH7OoM5oBmGeYiyqJShRH4YR7oVoFQziaLrOOgYLqJ52nCCw6Igd4nvLukcNrk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I3jsN13+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I3jsN13+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2DF8C116C6
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 08:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772700893;
	bh=k/ZfNRNtX2+A+cDGaFNUZLweLsV4Js4fUq/ysGNo9WE=;
	h=To:Subject:From:Date:From;
	b=I3jsN13+1evdSNFExcSqVCYAiundwj5Q/bMwrGbdPojltjdBxf12W8tx6gCRWX+/I
	 g+VKgeF2D3eNjs0FnWHNYbvWZ+IHCss0Bu5GUqiB5FQIJenOvyhv9XNvvVPeBO1Uh0
	 1WXG9sfLfGvJKEmAzTlWUmjxiCmzYLH9HtdBswc/D0lXpGEZ+7TKIpz/N5y/BiTm8l
	 nfC6GMlBjWT0D2bP4ZdYOs+3CM//sYRXpV+VdhNd0J2nN12R72YXvST3h8K1EzP2Kv
	 H10WlquiP9hG5E+CS9r8qbmGRMpfMC6HQ7RTjXS49oh2ZipYj0v9+eTA7ZVVZJMzCU
	 JcnWTsWawx5nQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 928D7EEF32A
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 08:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177270089359.22425.10102273912417478184.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9716529edd0a6948f175e446912376eb613b5c26122fe3ec1c2789349b39bb6
Date: Thu, 05 Mar 2026 08:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772700893
