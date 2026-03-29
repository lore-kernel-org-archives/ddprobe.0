Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E33C2D73AD
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 09:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774778094; cv=none; b=Fnz7lhhSsJFX2bg2WsfdHK6yNsTleEWoaRVKbVgnw2+6lpG6O6qDLyOd6WDDEnHKoi5rClI4NRFYwIXq2lKH4scoHMxbVVzXkRKqUojGeHo1ZAB4u53J4VxTL/gvjhgHwe0bjfoQ2v20tG5o8Hxd+QNS1OIHL7mATadmnoCVDCk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774778094; c=relaxed/simple;
	bh=DpmyIKBsXuUYGKHEc3RdvbdTlhRuJs0MYLadBADhmNo=;
	h=To:Subject:From:Message-Id:Date; b=d7U9DPdlEFjs9RM2hdRaKHTd74FopMXKizRGp8KeSnjQSXOqIHujxRu2kDg+iEp3nl51lGlPQKBn1V6pjc1STEAj1WnX1JcS+JLRkZ3b/Pp2Eqh95VQZUvEWvRq5ZITtH0lLC7XSJU4ydNPDNlWxMtI9NBjvDF0weoW00ME3XMs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YmGUwpgT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YmGUwpgT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F474C116C6
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 09:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774778093;
	bh=DpmyIKBsXuUYGKHEc3RdvbdTlhRuJs0MYLadBADhmNo=;
	h=To:Subject:From:Date:From;
	b=YmGUwpgT7h0GbJr+zEGEVv8FBfoq8UYe83AU5uM5h8IIt7s3IuQ1Vkmj0+aBe4uuI
	 yvRe9WsF1umcvnrcEDcj2iRGpScRlv/AmGQvwSXjyp2+vQJ62CRD+hYNy9j0ELvz/O
	 rWqfrN6PH2PkCc4oymioGCNtV82+lBVi/IB4DdzsVcIeEgwPGm57yznM0G1rnx9GdC
	 qacp8h7sUm8bLmnvGivj9567Q4kvMH9YC6kVS97fF70H69tyANe8iXOD35Jjmncbkm
	 51eEekYsbtyDJcrojUyGLYrPJ/aLKvkdrCkL6UNeTOKRYsPmtMjbNnlC0G21cGtzpz
	 joRBCjl6dZSdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90BBFF3D5FE
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 09:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177477809358.16595.13851995004877221308.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 780f42d91654908e819b15a83c78410988291206f3a20532762091ce8f965adb
Date: Sun, 29 Mar 2026 09:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774778093
