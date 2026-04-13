Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 741173368B5
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 17:07:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776100054; cv=none; b=LOxpLWYwLk3B2Dr4M6wqYYbJS4dT8+0awpM8qsmauIVEVM1tuAxpLMp9SHel9XKZMRPATIv8SxDjTF3n9dvUUSJQ0VtARx4zz0bCN8JFLnQBai2CvbWJ08Ox2itlCj/4XL3ItsRafbtatkR078Y7M1bjv/W9P4Xv4WksxRqq5to=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776100054; c=relaxed/simple;
	bh=Emkk/Ot/N+mpnm6kHqfQOO9ci1hPE7IrTTSkaP88tg0=;
	h=To:Subject:From:Message-Id:Date; b=P7fcZc7UnsU4nBcRFwnvE9K+gAi8RKMqvpHuQnZ/mNn4jUoLyDS0XhwEgePuPZwI92OlEU3uPR9esBSu7AADtIWZc1tFwmC2jDjNqS55ptkuxuiWLqgPMYsJj+sVAUa5STPKXQQDdrDQ7JdGcvhPtL2hRpmKw9IsPFUCQFy7FFU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JeGK4MkN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JeGK4MkN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0D95BC2BCB6
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 17:07:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776100054;
	bh=Emkk/Ot/N+mpnm6kHqfQOO9ci1hPE7IrTTSkaP88tg0=;
	h=To:Subject:From:Date:From;
	b=JeGK4MkN5fG4qdS2n6ZlbwkJGBPWrz2hB7mG+BXire51orn1h3w9r49UZfsRafKDj
	 H+jrzLvet4akg3/OKfseIfquvtPqPrCcsyMCGOMtr9JmMt0CLvTCBbFgDJzdVyXhFt
	 k4L3+ji8hjP9FAh0Wkhnl0k/LV2tPqmjvRXa+dFaEL82kmDVs1YkFF8Wg+FZr6CEGX
	 CdrILkYmH+WpHAXEyaf7smcHs/frK0AjbfjPK4gvpSN4deEke5T6cb9c9c4OGDBkuF
	 60xqJRFCrHRAisMmKW6UGN98lF+ZXY3Wen5S5T0dJmV9r5DvjWkeuGRWGrkB4faexR
	 VJ9OOfJIFnnTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE5B7F34C68
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 17:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177610005381.27514.5122704472629910204.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9daa30216eabe7c067f2616d87ffd397cd3b4c747be7b197e5024bd74e9aae47
Date: Mon, 13 Apr 2026 17:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776100053
