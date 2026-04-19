Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 342D52FFDD5
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 10:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776595054; cv=none; b=KbwB/4RrBYX3UPrma648K2pv3TLTzeCHjoXaOaYA6gSAPgV2jkMtgmD3cpYYDr2RW7UsH8SafJ5mt8sXzo437htn/dcqVT57GyFhThZ1E+gV2k9KuIvPymOD+8xOImQtwKyjFbJ7mYT2G+LMFcRhvQnM+aESw8aXLnm6TwPz4yw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776595054; c=relaxed/simple;
	bh=Hzw+pbQsNaHP+V+iv7knqlEi8jlvX0T1uBEuC4pUX74=;
	h=To:Subject:From:Message-Id:Date; b=loC3z9kMhkKxfS0vRwudwjAvDLS/K/oFJCVP8h13Vdoy/Pm5lL+Zz+fHQsOGoYEqymC1ieXqBAGM3Vw8RaZg7AJwttq1qkuCfV/L9wl3lb9yWnQko5+/4xfD7DA4X+yIiC7sseTEigCEvGgqJ5kGfB6gKAM+VEDsJnyUYxRgtG4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Arg5wTHL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Arg5wTHL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C336BC2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 10:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776595053;
	bh=Hzw+pbQsNaHP+V+iv7knqlEi8jlvX0T1uBEuC4pUX74=;
	h=To:Subject:From:Date:From;
	b=Arg5wTHLM0puuaIh1jv9cOwsBET6tH9isF4KDe9wSweLhWW7LYDOr2jmMaLsC6jNy
	 svtB8fc6Z8WgiMkGVV9CIhvKB8ZByOMGEUJm8n/NG2QqvzV61VVxe4pNHxKhC+tJZz
	 Lwfkd2JER2Ha+i/z9A3Yt3uSfEV4/fUW3nMvo6wD3QF8AtilfTT5Oi/PxKAF/w0Iio
	 YP++xL81sN52RRHPjBaXiQNSI4UFMUgPwvRBNNBZdt2RVyGdTVxCK3mADP0u//rTiz
	 T8KZ+29wv58hiQTKrMllCVtcmo7dF1fHDuArayExvB1/OtLw1wFtBhy9dne/CuXn2s
	 5f1iYuqtL+phQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFDBBEA7195
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 10:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177659505368.11465.10432581237646837548.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce8bc05c097906d0a9bcc2c10b04ede0a329f60dc770ca375164616d96889e9b
Date: Sun, 19 Apr 2026 10:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776595053
