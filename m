Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1365F18FDBE
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 01:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778547634; cv=none; b=Hrst83pWlaPoCvYY/Ztt04Wnxb5i0p3BpwVG3w8UuA1UqH+apMm/bW4tqHU6DiQ4CUWqZMD9U/rkBor1MWeqZnqWn7qCPEYpAZS/TxhouGTqhYwaSnQJhLAA4u9lPn2baPoZ9rDFaHKb8bzasL2MnPLxnxV8dNpgcvIKySWv6/8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778547634; c=relaxed/simple;
	bh=iIfbDFaEpGkI7AZe8bvfj90JlluXNpaAgpIBrrABJO0=;
	h=To:Subject:From:Message-Id:Date; b=fIeneAKw3na1qHePDfgs87nPRyGqyp9TdwPHUW5KCOdQf++lfdiTcllZRrBk1iymWeJ9QIlFKsAPteQv/VBDyxysOu5offR9wFCzog3iGed8J6acOLjycEAWQ5iE60Oe69gQC2OeIFI9zAUx3tuJ9VKtWe1v1R+jNktkSLUb1/c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T9SWYXpq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T9SWYXpq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCA40C2BCB0
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 01:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778547633;
	bh=iIfbDFaEpGkI7AZe8bvfj90JlluXNpaAgpIBrrABJO0=;
	h=To:Subject:From:Date:From;
	b=T9SWYXpqoR3l2xjsUTMLGKKmPLDCaTHBOiEkiv2FggO/vs6vpQgbz5KRQP1hLZU4C
	 eqVKu9TuwiutpttaaMk/IUzJ31JfGCwk9lkQDO6jIPIliDQ4PByFvKl/j4IG5fPcK7
	 sk8vEL4lLd+L0qGZCoZ8Ym+h7hvDD3l7M1GaFXT83+xkEoKJUGOF1uuybH3juddi5i
	 WZDRQpECmBtbNmm8P8oSF9FnX4RGz98POskcGVCRRaQ1bJ/A8zkvutsgps4ki924KD
	 ukrm1i7VdBEA9lkDB1W+hp5LqoDwpA6h5AsjeqJ6Vf+4MONGXHTRoARWzOTSP4i8fQ
	 exYXD07AXZ9+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB88FCD37BE
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 01:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177854763369.6110.7082524822556489518.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dfbd101a20698637b358468b4c532945919b5220d14b7076964c3d674a716b1f
Date: Tue, 12 May 2026 01:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778547633
