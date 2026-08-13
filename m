Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F51D3FDC18
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 23:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786662634; cv=none; b=qivPWGX0rm1ZOYAATGf89bHyFG8CYfDN+iRccKbhM0rJGLepS1oyrMZWw70iVya+fknfe6bQ9+7YACv0K4sUl2Ii2dhGcNX80BsLTHtw4Xgo2T5ADPNEHlzDtvdpQ770PAK7VLxWlZrdHHK9/8RL7vfGdcpnKJhFw43DZCDdRjU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786662634; c=relaxed/simple;
	bh=ZWAoqN3rKQ6AVfx1En7WDSJD/oxlH3ffyTyP0efCb1k=;
	h=To:Subject:From:Message-Id:Date; b=HyNUAFiQad6LOauuop5hORsULDpOJ6ZBB6cbQ18ByNHtcxxuabNcw7vq+zV60BvrhcK+EPQZBnkDEEKUUTuaNakQrH0+7pTP/a4+7a5VOGCXtLfUQ7vmd1pGpGRuhMtX6NxiT8h04MS7+CYIt7lIfIVxpRO6xr5o8X2//T2ht9k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eBwfyB0b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eBwfyB0b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D520CC19425
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 23:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786662633;
	bh=ZWAoqN3rKQ6AVfx1En7WDSJD/oxlH3ffyTyP0efCb1k=;
	h=To:Subject:From:Date:From;
	b=eBwfyB0bQI/ubT8E1lAA3W8MEMZaPcQ/Hlk8O9ml5Bt6/LQuvDDKS3RpEFMmjfy8z
	 jJ8qb+k30r5RgOHYNRnetf5GDkP5Gy9mTTWe/e5oZurhHUbKA8XcFA0H2x7tAN9/fg
	 QmnbsscA/4ZIIBoMiAHkT2L//leJdrTochUDX6l8Z0oFsVLj8JBV2u5jHuNUmiFHz5
	 QhC4q/kCPN+sNkYWRwTFHs0tqYCOnLvUl9Cf75zgPl1jq7DC4pALqZ+fUT3WFVIBaS
	 /btWmiau7PCO3hJzpgj3X1PbPRjF+eUd2V4zA05rgFjnX93UopP+oSjr9zyUgG7WsI
	 b9c7gZ+q84Qvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACD82C5B572
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 23:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178666263368.29210.11010491829212447174.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9db4ef765302387a74fbc4f4fc4d19121327fb50edcaa2b55c84295b13d9d2b
Date: Thu, 13 Aug 2026 23:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786662633
