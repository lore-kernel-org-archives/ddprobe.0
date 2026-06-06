Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DE2F83A14
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 09:04:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780736674; cv=none; b=qdfSpktUDaZmIE54vVkNt2mJYo7Pv78SHmJGJiTwfnzg76/+G96HktDpDv0ZUX4UAxc1NZBZnvmu3STWKVAjBsm3GVz8WFQBYOKP7a8lYUitTVkq/u/kEnawT5278i2RN+WzajXXA8WCcVxyBcilF1QtIfP/RVAmprWkfGeNliw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780736674; c=relaxed/simple;
	bh=Husklyk2Zqa06qqFQSTJaW5WvDzS05DSi1QhBU6Hab0=;
	h=To:Subject:From:Message-Id:Date; b=NKIC87jEbJwA4NiGXsLCCsVjNfsWUQ/pDY3XmPQ/Ulaz2x2edIROIB2NMvtxOsJqLQRWn55iVHf7JQdmB2Bv6GRC/jq4JKifd/g1byPrYtlIxlnahXYlTGX5CguO0E4VQ2AtaHE8CrHJA3vhcvAdhY7Vfu03pjM6+CZ3WPbNb4Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nXTzd/vU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nXTzd/vU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE67BC2BCB0
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 09:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780736673;
	bh=Husklyk2Zqa06qqFQSTJaW5WvDzS05DSi1QhBU6Hab0=;
	h=To:Subject:From:Date:From;
	b=nXTzd/vUoJOYiv93kSSiXaZJZO2dxiadrtChrSVYBvdgOYILvmeGgTCPtq+/mNzUp
	 k6u/IwI+L/bBckYsNeo2f1VpXO4YhuT8tBB09zmEpeJ4kPmR2Vs9Ci7f94z/O3ztGL
	 +jLtbBtwcJJ1wX8IuClAF1+/qWdj5MSo7GTwe8g+BQvtIsmvQx5C9lqwSzQ0zVF6bV
	 piTBOahcLddkuOv+3rVEpKbjLuYnsIBXUJuiTGuCpxFAvoAhXVhd0S3kxxJM5HpKNh
	 q6XOJDnsnyF00Hfh7GJeaBtumO2ElW2UDcspHkWCpHbUo8qw/T9XyMOk8VViMhiqzw
	 SBm3ASjFXa7dw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8E54CD8C85
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 09:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178073667373.24276.9728171209210052778.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55e191fc22bea936f7b4062fc97d29e028f038bcd534b96759bd0557658effe7
Date: Sat, 06 Jun 2026 09:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780736673
