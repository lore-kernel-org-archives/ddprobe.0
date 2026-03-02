Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63F143FFAC9
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 15:04:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772463894; cv=none; b=b+LNAGW1GrHlrIX0JP3CHnD95V6CGftyprnA2gCMgyb6boNPnrRIX+2a0CH45qGrzRkImy18Tljmr4KeEwyN6bHV2fdqGFVto1A05JLev9BhphsL6QCXAriW5MzvdDLzTXxYpMUnc3ZVJW1bIeDJ1FcGdJrYIX/9wif7Ihv8O0Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772463894; c=relaxed/simple;
	bh=OefZ7AdXaLwUYWpAEMczHHGxi+wvIP4q9Di+SZ49agI=;
	h=To:Subject:From:Message-Id:Date; b=plEYSEBXYIajMHoNE23LG2+eEXJE2/sx4WxH04C04MHhexnPD7HEzxW5Bzi6lFDIWtHTCNEH+OLFG4UVBO9cQ2iXhIY0rGV6Kf1oP2eIxoqYnuCgxHq3UXAIV2xPDaZ8cvlS2jXnnOSB5AbbSbuJys/4DZdOp7iKrxh+Yy3risY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EE3YYazj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EE3YYazj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0F8D8C2BC87
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 15:04:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772463894;
	bh=OefZ7AdXaLwUYWpAEMczHHGxi+wvIP4q9Di+SZ49agI=;
	h=To:Subject:From:Date:From;
	b=EE3YYazjIyJYtZeQPfs8pzTnT6lF2uUzPNabSF4KH34QSTbMw9BnC8gy+VoKsKmBT
	 UC+12zVKXdsRUutUajTs8q4bo49MLLJ4cvXSnYLXFuYxPjwj5Y9El0y7ZhwWkBiiVq
	 NF3N2i3C67BdVnmTz6wFUYTGWff9nyQmzDxnJngElP3YODCFuiVnzxOPgQ0NQGaeWf
	 2HdNeZOVSFBNclDS/V4PENLiQJXLfQ2ONd+p+FS3Os9bz+nzEa+VpS/g4vb6KJLBQe
	 POQ/gIzm+JbIKNzGAjK4Gdqcl1xDgdmybL6Rg8SmIjRaeMIaj6AweC1YnToOvVB80X
	 yOIwq5u8YMx8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E3C58EA4E1C
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 15:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177246389389.13626.8372615303392675380.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5c8a1ccaeb448e324dcaf2237497f649c54513afb36c2a665cb25182e9604f7
Date: Mon, 02 Mar 2026 15:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772463893
