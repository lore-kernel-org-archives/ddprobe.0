Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F2D534A3AB
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 17:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787677834; cv=none; b=L6flqvZn3zONPovnmzylplsEprTucSaQ22cAQ3ssAcUyr2lUf/9IWtfKn8vAh4LIDHYvU96GHRvQvczuUO5r+7+Clpu43GqVRxzeWaXaF7DtajHbE3CRDQX8p0O9fwWOpybfzR2NULqD05Oc8Q6mNhD6y74WPIvtM5q4b0DSdsQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787677834; c=relaxed/simple;
	bh=Mf1sF54X2SEvqKx6o4GbRT9trbTqZn1RwQSJbsiTFGM=;
	h=To:Subject:From:Message-Id:Date; b=tYv6IdddCdz5v+Qq5WpJJYOsn0+976/pp1Nbjl1zHxDGwJ/6tydH8vwIH9v33+C8qWgnorFLxJNmnDciJMOdk826rEOWMq6Q0yr/NpnhY7KpG2kheyxanStKjfEbkccSQuMuJ0sdx7Gt4xQZbnIEeqnh8BVYbAN3/UowqB3N5pw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vd4W5wF5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vd4W5wF5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6656C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 17:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787677833;
	bh=Mf1sF54X2SEvqKx6o4GbRT9trbTqZn1RwQSJbsiTFGM=;
	h=To:Subject:From:Date:From;
	b=Vd4W5wF5chb1NRPqNACCtRMml+Wf8SYurJtAy6BYrSWV7VsR7lK/fUgLzD9qUBS5q
	 DphHNOvik5F4obKyWFdBHsEnMTzMyCzh/Ip7ndgpFLSN/YTKW23zLj8moBmWqDZrOj
	 m7Z2gmBRgd9hFEfdgsuJRRu+UFNSQCLcoAMgFD32J8aUGn5bQU4ysMYWKNr3tpss4o
	 yimM7aRIJm2FSwJzba0LwdodQmSJcksR0qzhSaPtOAGYtA8sbHdoB9iF9Mln3wPCjv
	 B0ha/Ah94tdIuerEHmt4UBhTbx85qvPD4DGCuNVV6CfcA1qTbHUvpba7+HP12bZk+u
	 YsmJncOtCxotA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0C05C61DBC
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 17:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178767783368.9943.12319706100485813938.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8ca917ac0fffbf195e7082ac6828309338934d5d27858519ffda7bf681833f3
Date: Tue, 25 Aug 2026 17:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787677833
