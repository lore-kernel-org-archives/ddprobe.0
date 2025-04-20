Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48EED1339A4
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745168994; cv=none; b=dLp/X/r96UUx74+ZRT7Lnw5DqDNwryoLXzWso9SGi5PLx06rX7Lv+zkVpIo3m014wkr1dJNl5084/2bc5wRaZj0oGZjJuZ3VUxX9/1MBe1YNU17PUHCgwOmoRboX/du+ow3NRNVGXoKt0HTapBMdzu1YZGVT/gJC3ynkf06lndY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745168994; c=relaxed/simple;
	bh=WEdU8moJIrXK1cqljzuEn1ia4OeJnZssvLhlQ4ZJNa8=;
	h=To:Subject:From:Message-Id:Date; b=ZBVrA+7QtR+/H/DhyrUJTblsNPRequ3DlPkvlvEkMy+N/nyBcrr0BfER5qnj8Y/EnxIHDCHnfwVEXVcPJH4ZY2qhwph/cYDT7C2Y2kC5sVlDgfrSy9xK3t26cP1XD2/8RP8xLVGs2Dt+So2Qi+FjO9EzkdN/wMDusUuz39Vt3sc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S/KSf3ye; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S/KSf3ye"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B46F5C4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745168993;
	bh=WEdU8moJIrXK1cqljzuEn1ia4OeJnZssvLhlQ4ZJNa8=;
	h=To:Subject:From:Date:From;
	b=S/KSf3yeQDWlDNGJo37eBPPXCiPRBS9Ajw2q9Mx5KT/Y3aXui8RXCBTlZ3zJCgPsZ
	 FbHF+U8qjrzn5R/ke7k77hDIko5aoTzQXJTayx62nXMJ/+BueFsLfNOOCJSkVL/r5T
	 cGh/Bqep6kk6wsUzdVao5h7zouZaFm6gUgnpqL2nUBDKEnrzfbSjCFr+T6jm06f3hR
	 5pUW/AVU05Gc2jqnEm2JxLUR6FxlcKT2l5bnEhP/5g3xRk2KKxj+B3ki5bArlSXgj/
	 89P6mfTUF7JzpzbXBN6f8K0vhCJfKlI8P62+lo0Vaax9QenZF0Q8otu5LJsJTFFC36
	 zPyVNUnncxx2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A2E9C369C2
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174516899360.21358.6808238983446701983.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db106b0ba79b9c84437559f263e9f6fc5421728c7d94a190c8341b1414fd871a
Date: Sun, 20 Apr 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745168993
