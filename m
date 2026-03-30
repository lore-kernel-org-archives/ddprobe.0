Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21689372EC0
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 04:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774845894; cv=none; b=ZEJ4aiIVXzVV1YRHKNvoHYXH9t77BhYPNE11Gl8voGEYkcxrQ5d43LAuLEiM2YaGTJvDIPGhKWeWsgm9Fb1sD1aySFHQfJSIxI3kP1Iy2yK+6WeaX7/sDZ36Ifv4uw1iBiSXokCRMep/tJFkTyXWfk/whM/aM9h+fZ7cQccqFMU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774845894; c=relaxed/simple;
	bh=nEA1ZPMJipif7YZUZ7dZXAvgV9Pm5bBLo0hH3GXH4TE=;
	h=To:Subject:From:Message-Id:Date; b=JZlVho9HFgg+1wMtp8J90HOpIof+qCRssiUvSaSMcO1rwBeNjX2dJRy7kZ7MfNKNvlPtnyV+mEfUqlEKSpbHNnA+/2KkpGYqi3iA7p8pJBGC6Pw/7Vh8Y5WY0TJ4dN6xAFKCcNUthV4xrwkLV7w7iZHE9/MfzWZ+supdpWCtn9s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VKWXFqZl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VKWXFqZl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF9A6C2BCB0
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 04:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774845893;
	bh=nEA1ZPMJipif7YZUZ7dZXAvgV9Pm5bBLo0hH3GXH4TE=;
	h=To:Subject:From:Date:From;
	b=VKWXFqZlq9or0yFoCF5zPcYN6TNGjOOH5uLUNFqfFTrDrwo94hSn4E+XftZlUeTEB
	 5cbw5zta3tNm5RoN/ob6UdNUQ32ra/v5vfUGU8BP6LoFbzyY0XXbyBrI1+kCUYARvg
	 K2dL0N3kN7fLp63/e9PIv2vkaXxXz0EGYIsICDfOzfSl+dUfXT/JsS5y+aSh2awdaM
	 SDzkuyWy8AXEv0jAVFZdoRxkYfcShzrTc2o4X3NuwqOcMmeqm4a8r84hnQFaHICHNw
	 uHqcZSR5nB12edCcB8pwqv8MhQFNw0ZNRXzOVaO+Hy524v51b1Ff54knYBuAfW87kh
	 7WMXWcvn4YsoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96E00FF4941
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 04:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177484589359.9085.14912628203099518926.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc7852b19284197c7b9560cbc2554990ee85c068054a459abf5b9aa64f4f7c83
Date: Mon, 30 Mar 2026 04:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774845893
