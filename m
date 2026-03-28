Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10A0A15C14F
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 03:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774668894; cv=none; b=J0jMHyW7ndGa8bLH53m3SKBVfab6y3RJN/jyJvjqPTGWff4Ng8oPNCEM04xUOWocZs7itvsvFv73Ckunga7NyMDEQfSdTkeoHDLUNJQq+VJVKEpRVexawR/7gyYlR/J28vlAXWVTTsNsk3CW7aUcmmZjR/BqjcvThyl0DGkjQ7Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774668894; c=relaxed/simple;
	bh=bLp18KI8IUKdZcyUetAD7Foxs2bAtb33/qN6eDAPed0=;
	h=To:Subject:From:Message-Id:Date; b=DAEAtgW5HoScT2iqLBPqz/qNWLExtjWYy6Ehqb9vInAz/Lo1EMqIe5oVvBUBq0mlz+2MpQhFSrkpCWjrZZTKYjCVcYeNOE5IpTQ4HI7syPLP/pRBpQLKU+agzt5ZEJkEhq0ukj3S9O2cW70IRPLihPOWt178VAyv2h1zkyZ4e4U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Er+wJCrq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Er+wJCrq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6847C19423
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 03:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774668893;
	bh=bLp18KI8IUKdZcyUetAD7Foxs2bAtb33/qN6eDAPed0=;
	h=To:Subject:From:Date:From;
	b=Er+wJCrqvRyg25vgwpg+Jojd/PWojTatozFCt6b/6u0Z4hPdO6RB+OAYrU3z2tcE7
	 MCywM/fzAQyOhX2CszDSQwCf1puCZwwQA8i2r11RaBgswsfMN2WwQWebBdrXSBiW9L
	 Vilb+5YsCHu4BSyxRG4718E2F0FKNw8W1UiJbK8DEh1jMXcyxmKNfF5hQ74GFttfnC
	 fjGdTTmdmrp1Bitd6B2MPskaFoLTtKDx46a3oSOsO7gpLYDpaAE6uakFnJbYnmk4Nk
	 IwKA0lShsgO/4PR/Sk4NnxkwmyA5PXqnwKLxk+9tbnxln3kGE+yzzc4CouGtbsuPlm
	 ewIamUSio1vLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92A3510F3DC8
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 03:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177466889359.3647.14009866587425193309.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c79c999001c97a94da0367fa158c0a7b4a42c9ac7e40d16b5a6e8a66bf6064a1
Date: Sat, 28 Mar 2026 03:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774668893
