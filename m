Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35071313E1B
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 18:55:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775501734; cv=none; b=PoYtigo8wWZTyiitRKabYP3BjM+Giwqh4etS5IOHQaUpOMFiKWq2YyhTUw8Jq/6mTjZw77p3x2az+VXOV+xdJZOhUo9CCV6xO727Wq3mvSOTngplgz4OMFNIGWjEe0gy47HQu5/IIdzMyugv3Wf9WI4c9UgkPgdCaM+6fKY/1RQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775501734; c=relaxed/simple;
	bh=1NdF8N/wEhGutel+/Cfu4Dmy9t93h5ArJQPTstVHIVY=;
	h=To:Subject:From:Message-Id:Date; b=RZBGsbqm6g2M0D+EfsFmHM5ntkSbyeqYSCBZw9RYD8KJwHg0XhIEwOSaxkn3EXI615nPMS1WuJRD1bOgUv93sfrfQwEliSkbf7L+MiAaEtD5e9eslwN+FaIGErMYZ5PwUKTQrSDKG+EpkbHseVRd1I4MPWa69P96WtPjqFv/sZ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hIiCsuEX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hIiCsuEX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE55DC4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 18:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775501733;
	bh=1NdF8N/wEhGutel+/Cfu4Dmy9t93h5ArJQPTstVHIVY=;
	h=To:Subject:From:Date:From;
	b=hIiCsuEXyaAjpYTELmswVSPxy+2i6qxMFreafmy+yLmtgUZ5bzrYUe0CEcjoKWm7f
	 2B+vJOPgUz8fXsG+CDTghDlQYyIndXpQ0wV6mVBwCH2w//PyJ8TnxgNki6cxmPeJA/
	 62FlO8yeR81JQxtyO5VBfnB7OrdyRxnS9bSUAePvBjaeKUfmy5a/VhKb+X3zIfVvNB
	 ZB//1iW9RwXUFHbvxMX8+Fy3gvRp8Qxa6TcfuWx+zlfsuo8HIEtOrTqKi946lf8b6E
	 1Qvvk2z5PlElqs5XGJhexiTLHnHCdmvw4cWJMvAtwHPOVgfQ1AG3kGiP5gVP6Sq/h7
	 x8k6RUkWeyEqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEEEBF46C66
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 18:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177550173369.22830.2681884250081746084.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1ca7fe29d441256ef07af5d5a64c066da896d54c5e438b4166a78d53cff16e1
Date: Mon, 06 Apr 2026 18:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775501733
