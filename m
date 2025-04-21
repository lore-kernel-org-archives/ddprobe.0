Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 343D21FDA
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745222995; cv=none; b=CcDTWwNzq/NM4gqTYz3pY3Wl/ps0gnc6/GJeDLZ3h6giCH3FK8qDtO5Ho5WRHpp79EPMeRvheIoJ5SkIlvxgkImDaxbCKBq24L2P8xe47SW7pmOCGDpr/gMAkVUOplPFhtuY2LnPxYqAbL/EqjbM1j8nODQ2Ck9+4IeXP/Hh1Mg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745222995; c=relaxed/simple;
	bh=HCsYBwxHpux7CE2YI+//5h8hLJ2GqEOG1bKbPF41chM=;
	h=To:Subject:From:Message-Id:Date; b=Iwge0Ig/4EqinBuHuLO5THlMnF7znXqSf+HLzULXMH5DX0lp6TxAh/B32FpkUg7aZJjKzHjHVXnPqNkhYhAYHVQYRyfhL1jlTrERmyXSQla3FNYxzDBiJsZlKf9RXGltY3ZrwWCVOg3QkDN4+9zW6sIKKrnSe94OVPTIT30RnzE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BomgkOz9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BomgkOz9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEE51C4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745222993;
	bh=HCsYBwxHpux7CE2YI+//5h8hLJ2GqEOG1bKbPF41chM=;
	h=To:Subject:From:Date:From;
	b=BomgkOz9wxEeT5bZbbyoLaozx8RsYYZp0f95X3h+7bj60joFJlM7SIyAc4zjvoyQ6
	 jBpBTepBo1UuJH0hTslbHD8a3ketcuAzs2L4/nwJxyw4m2mqv96feKNrUJnHudekVF
	 Rvu6cL5aId9szFYKYFumbFBblrB5y2MYQuvEGQ0SaHUmx3KleUoH1shN9hN0vDlghS
	 FdQM+LjrwKKsmL/bU002hC9Gdzk1zRomtBByQVY5kJ41OTdXE0TwFOZK3HgJaFDkMU
	 puBKCEqK7+s1//u/ImQpEsQiQvvR2hD2GcmUPiAB68GB+yckrf0Qgg4zW/OGBEOKfm
	 TxqqXwLDinI9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DC1CC369AB
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174522299362.21938.5131548048212767145.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 771173850e8c48bf5b1026557c76239576647cfbeb063ad5c3e84b5f838bece6
Date: Mon, 21 Apr 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745222993
