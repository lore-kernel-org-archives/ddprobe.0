Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A6ED1D6A1
	for <ddprobe@lists.linux.dev>; Fri, 13 Oct 2023 16:17:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uIxAXCRT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE486C433C9
	for <ddprobe@lists.linux.dev>; Fri, 13 Oct 2023 16:17:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697213828;
	bh=tpH+thKpGfoZ6VJV9aaJky3sDp4ehvGMOM8xdp1c7yA=;
	h=To:Subject:From:Date:From;
	b=uIxAXCRToeCdRpM+e9RMUyCS6cArjt6vV8fgeuSMxd7rimPDOT4exAY0AQAuL64hF
	 QGNRV155tWdtFFQ3al2xjxxBBYuYt6BX/gOdM7lFoUnwzxbwxnQcwT1BkmhfXfx47B
	 bha7zQ3Z8l9vodqamfmeRZIbtbpHun/4dPbUDtZwOwbEy1iwp/uPYR5QR4Y2viWeG3
	 hhb6FHoNIS7G450FKPENWBeeZfB8x6SIoK/l7EQYR2nvxqafNKD1a8oJ/u3+TPd10P
	 J/5mus2mP/3Nfza9gZ19odm0i5+tc0dh5aAzqqE7nF3cPpMhD1yTYUBRwlokVzOFCl
	 Rf+HfDlKQbG1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACC4ACDB47E
	for <ddprobe@lists.linux.dev>; Fri, 13 Oct 2023 16:17:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169721382869.3262.3976421714577389354.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa0667864f7b0568c8ae2c530eec1595f3146f4fbbcbec70b9397d9ac2ab6e91
Date: Fri, 13 Oct 2023 16:17:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697213828
