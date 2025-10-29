Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2982624BBF4
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761705594; cv=none; b=EwOIFF9GLfEMzn/ERcAB/TeLUJAD0aLt2BML/DGtFCKavGWW/4K/AVXwCUWoTRgZ8uIcMV8pZNAdwgm+cNVxsMrRpZf1IrYvc/jE/2NMAM9kB4PrwgESWvETcilRQ/xXAZ8YZxMwAydQuZT6pLKPtPxzEz/Ua3TW9PeWKilGr/4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761705594; c=relaxed/simple;
	bh=efXbkfOX6yCdJO4OfKt1WQJijNWuQq7Ro2MWHCkMoXE=;
	h=To:Subject:From:Message-Id:Date; b=ogwENU3e8RjDr7JUfQ/a5jitZOy4wvCvfT9gUTYFEGh59L5FBW2/+GIWBuQDAHJeOsLuUOsaLUfhtrgYKh5h8g8N4Geg46XVRmzUmr548Y94E0GtGImv22dEyg4sZ2e440I816vbXmxz/WxVCyWbGHw92C/z5XGTr1joP5951A0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SgV/R0cT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SgV/R0cT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5D50C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761705593;
	bh=efXbkfOX6yCdJO4OfKt1WQJijNWuQq7Ro2MWHCkMoXE=;
	h=To:Subject:From:Date:From;
	b=SgV/R0cTggBp9W2VWu3NVnEtV7tAH+nFosswBE2zz1x0jVdCS/USwJzFpKRetdLVW
	 p2Sxdm4devGz///aWMUgN73psjMnymYF8jxuu85KG7mzthQr0ZVjDwi/bifsB/KVJv
	 WAb6q2Ra5m8QfhLVTOUYp4Hh6rdTeriKbuTDGGcHXq8LwopgMnJsyw4MFp3v3/xaa0
	 s5wossHRmc6bfrB0GK4eI6Ip59+igsYauOMobdxvWQ6/ocumQO8FxFI2oEAHXRveY+
	 dC4WEAhiwA9drJBwzXeSpvTbdUD0HzYGTd1ewmc84U9OZhms1NV1Eu91btmfCn9tuf
	 lYac0R/+P6njw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92337CCF9EA
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176170559359.7535.2664834111318077801.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3505d05dbebea8aa946447cac847fb5fa51c30ece00b99556942f1682736884f
Date: Wed, 29 Oct 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761705593
