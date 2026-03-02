Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A73F3B7A8
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 02:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772418894; cv=none; b=NQbH3YBMK3AxWYwOHC1efbWSxejenFZzybQ4NUmz/yv6lwhfvyb6d53Scmsfbr37S6H83jjuT5fGl2WRJppu+brdMNAuAJDoNSn+0+5xXEs2yntKnHAaBAlcICcECJrDkvy2zuAFwMgvugbJIv041T1lWPG5O79v3vVAuhJVcWo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772418894; c=relaxed/simple;
	bh=xqXMGFyaw87tZmY7T5LeMbJDDuiQMxsH3hVFqWdo4KQ=;
	h=To:Subject:From:Message-Id:Date; b=qsqUB9S+FSZOdInNE/XQx7sh/3KBwkpg8mYV93F/yvnqbpf+2e3HcqRDWYbb0mIIlfVKQtiF41FAJfLReGZm+95tLGEy7kY7P2wPhI+DAPauhA+IGpbDgNEdVlYK8tTyIYYhnQaDmw3KukRHHgpPlNpmDv2x/rkljxuBkWj0P2k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t98WKT0b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t98WKT0b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEC18C116C6
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 02:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772418893;
	bh=xqXMGFyaw87tZmY7T5LeMbJDDuiQMxsH3hVFqWdo4KQ=;
	h=To:Subject:From:Date:From;
	b=t98WKT0bBdCSSrK/VLOc7uJKPYL6RKWSE9k0AEUQP3UvGjILAGSYL3onSighY/UW9
	 KkI5Qh+4KHCAaB7VOEB9CSLGotaT69WDMI9SbPnM9s9d8u2q0NknwThQjysIJMnvTW
	 0bH9ClHKWZYt8i4p13NYgG1UWY+dKhIRuGDvB/W8Q0LD0EHTCXC2GsF5JvoZZu2nAq
	 Ql2Arrkepbo4XPdINLRQrceZ0JqTnlUusohW5XpqaL4OhVEllekEDnNBYwrRlmpo3s
	 DiljlLB+Glc1NH9/HcXXXrpJcRAX1E+L5HvpCWUyUOU9xuez0uKbopNl/EZPNgqsxF
	 zteYu2x/qg+Gw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0313D58E49
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 02:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177241889362.19369.9425611863416669010.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e60704a44a0515502027d33611eaf202cf7e698fba0eca1a083f8eceb92421fd
Date: Mon, 02 Mar 2026 02:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772418893
