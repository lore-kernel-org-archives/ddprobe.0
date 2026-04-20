Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B64C3BA25A
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 18:47:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776710854; cv=none; b=hg3G5GIP08psh5JMPDv/5VHaP3gCygj6rxg7TskGv6w09XXrZDXSmSVGHGKVDj0Nc3ZEn0nyiZbZcUC1aBqiqgLxHMxe910N0NVi75KQ4urBfJDmG9lIRZWuj5u5dD5HE/FY1E98Cki/Fq8+3wfuzPqig1r0eRt4hGVHYAqc10I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776710854; c=relaxed/simple;
	bh=UPQ6AsZz/Ta6puhvMCnpz6UyY1Jhh9grYrG9qiZWY5Y=;
	h=To:Subject:From:Message-Id:Date; b=LHx+C6M0WtlfLm6y0vJ/0rNiK1h4d2FSX9utfGNEk+d222xm4TQjaqxD+lxfOC77mBF8rcVioMs7aYYxv2Mcfp0gnK4crBRJ+RjccW62t65GMUqes5ASR5y/Ivklx32vHVJ2aUgawLOfWvW9Je1GRimtr63Yo/X64pwlNLFaXcY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L3CrDx5o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L3CrDx5o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8EDDC19425
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 18:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776710853;
	bh=UPQ6AsZz/Ta6puhvMCnpz6UyY1Jhh9grYrG9qiZWY5Y=;
	h=To:Subject:From:Date:From;
	b=L3CrDx5o+8JiNDdo2b2BXd7JWjoY+iOd/RDlY8ad9Gz5vhOXfiQQSQGqcJ5TB4Tns
	 Q5/kkjMD83xMsmCtViFGkzSzFAO7Kbd2PsJ06Ccq2plLpxA5hJ9m5VJqxkSpWW4HQt
	 dmmKc+zaa2VyNwbUvODZsBjv95OX8X7rh4CsYA1E+ul/k9/ii9NjtX8/YBjdTBhYEI
	 oxGaPUXPAG7xGWpH9Aj4LYpgZTEjR4kDP6aaTDC0LecIM2b5sFwwdG+SL27ll45g43
	 ziIgC8J+n3zzN8PV7yOgKRRJHukaK3VzUTuFerDn7RmUIBTO0I8OtWwWJfdcfZgWYE
	 49e/6H5PYLGcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAED2F5A8AB
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 18:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177671085369.16527.7396982058375337216.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3be59fbc43e225a31077448b35e44cd6acb6f7635ee2dfa50382fcc77b5762c0
Date: Mon, 20 Apr 2026 18:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776710853
