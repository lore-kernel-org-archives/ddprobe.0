Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7241C146019
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 08:23:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719303803; cv=none; b=MY6h4wL6wLb1BlelDP5gl8oefqkG+c7jYzDg8PGiNRXm68JWETWoB0kCHhYp1WXx0QEyAy0K6zXzMyp6rnVaWALkOE8Cdnqe7smOZlxqRc6u7m+070tJGhnAUzUE+W9eLzG1olCLPrvN+qUjlyMoKOEOcjC9fA9cwA9Fal1qQDE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719303803; c=relaxed/simple;
	bh=y8qY/qXpWylkfLfCbrqrrOtwX3yJ/LaWcz+2raYAe4Y=;
	h=To:Subject:From:Message-Id:Date; b=XUyF4Sn9mOYW6iMeXsZghWaVIfDWN5yxaMs9NzoUHd65PaBWgWPRAORddPVdXJ3lpuLnhEYSICjau8GBtbqEsr6F2c4eG5Suz8t5XDCQxTFgZyL7eqwyPqAFr4cJRCw230+4QSf7cJ/qWFOKXfPLseedui+LGez+DaKhUll5d/o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bMoedZGf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bMoedZGf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F2610C32781
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 08:23:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719303803;
	bh=y8qY/qXpWylkfLfCbrqrrOtwX3yJ/LaWcz+2raYAe4Y=;
	h=To:Subject:From:Date:From;
	b=bMoedZGfCrUP0GoPu/5+xUwL1M4m/j8UMa4IHykDSSpqSEpSYDgfwLQoPq52gBjZe
	 DzvbdNpVbe1im4uBE7XxdHNIx75iFe7upIt5t89rLG+zi/vQWw55a0/okzvUnCb8NU
	 mRSiB0/XDAuz+69HenTnpz+QXro8c3WqRgE4PkMfhGTF/fDIDCzVOtkcSOybDaaxqG
	 0f1HIHgGCqnXBJogw3J/vWFWvHR9SCoHVGK80+nc1M5IZUHk2O81LTLztJ1Tc4m/GV
	 SQ9pBrB3hC4aHBkY+jLClHfVcAmUv60WMqC9IgBF43CAvS3IlYB3DOvhp6NpgrcBkD
	 mP2jX/UE+06xg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D47B4C2BBCA
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 08:23:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171930380286.4819.10056149054932468777.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15aad0a04443fe7ea40137f5f94d9eb4a6f8d4863b90b486b5025463e9a9be27
Date: Tue, 25 Jun 2024 08:23:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719303802
