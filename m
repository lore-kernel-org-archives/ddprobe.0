Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41AA62AF00
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 02:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787970634; cv=none; b=m8OY4BZvh6gpSpzxY8VejE87/8kBL46UAFuYzoeG3cKdSGcau7qKmvbna9dlmMKZpP5K7cxygN2X8X5t97hC/+FYPnw2a55dRGelXpZB5XhagxmFNeSc8Xpr5UI7uo9Y1ZviRjg42mzF7IS0v/6EKBdyfhyH4czFtpdcWc7ElLE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787970634; c=relaxed/simple;
	bh=lE3/G0vCRVAkWqrOBEBKPjjbb4fQ9nTxFwT0DtdQ1p4=;
	h=To:Subject:From:Message-Id:Date; b=oPsutD+PbMzI0OYDJZcqmJ9v54hx9iM4UWOn4X2XfT55rIMIXZ+gBGSlZCHKY8gWxbOqgWJpHqTI3TYxBwn6ioz9VUvWP+h/U24bl1NOJPMCsKwinK5XKXPTYy7kHRBCDBvndp6DcxsQnnIBbaVU6auSXCwqlrVThpJPiJiCdFw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T9MMMvP1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T9MMMvP1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3A79C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 02:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787970633;
	bh=lE3/G0vCRVAkWqrOBEBKPjjbb4fQ9nTxFwT0DtdQ1p4=;
	h=To:Subject:From:Date:From;
	b=T9MMMvP1zsYfyy2Fv3Z1wLzpcgeWeEwQm781ezuw+fDAFJ0AhQ11ceuKu+qoq89GO
	 DU9DVbXKE8dQj2sWbRukaa6WFT6EnSNKMWPKA6X5fPEQV0iNqrfRqnrbDPrlmGcf5L
	 WmY+of3mIcgPVLiVivoMhPxRHD91zh9U2JtVX3QpAZGm7m+9LQv+6IfGLGvmYqFXZx
	 TBes0g0n6jOMVnaXA+UiJAY0BQ8nTvKv4kK13hwVij9jhzYgZxYYfsIGuTzXiRZ+f4
	 0KARPC9+ALjAAWa+ypJMpMFnDq8YJ3TKzvD/PGYciQ1VKQJsnlqnvaHmDnLu9vQgSo
	 TDIJON9Fona7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD7B6C61DD3
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 02:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178797063368.32380.12058309820743289383.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1061db98240540e960445a7855698727d9127e6d6efa89dc62cb74f8f6947397
Date: Sat, 29 Aug 2026 02:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787970633
