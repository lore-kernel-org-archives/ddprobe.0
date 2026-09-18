Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 594C0519907
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 18:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789754434; cv=none; b=kZeCY8yrLC7hddMdvRK8lOtPV+pop9Bj1a/uauT5UTdxC1pX7VOUSOYq7AI5icTZuOdUwaBtMmLSne8RVN9ufFLczLaOzzIvooPw3f7cta3Z2EqtP+FYG62tIsUb/+yvZqukUTBIkFGNBulBKcMe4fie6ZnWm+LMs7NIIdfByBg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789754434; c=relaxed/simple;
	bh=K0M2dyxUSw2UWHLPQS1GFt6asFV/O5B2yyIOHhfbq5A=;
	h=To:Subject:From:Message-Id:Date; b=iOeBm1AwxjYftRGIQzuaqMR6A5ejuXt3qMBTUEqxV6u+Pjvx6DgxxMfjxg683keIaAVsFV0sfMZ9O7u3qLpz9b+qeP6aZ2INx4Uq1mDeoxjp5AEWZKf4Tkzg061OMtIVCzikPwxD/FxTBok9XgFkvLAD6OproNn7Buy7DRH7/cY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O6jdSBa9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O6jdSBa9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0118C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 18:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789754433;
	bh=K0M2dyxUSw2UWHLPQS1GFt6asFV/O5B2yyIOHhfbq5A=;
	h=To:Subject:From:Date:From;
	b=O6jdSBa9HukReB14h90mtC/Rbj1bBKvjAzA7yYuMSSwMB4ITkWt9CUHAdtCidKDbQ
	 gMxRbJtgD0lp0yef0JMmXYwlyrLCeEKqxmJ61BZKTjKsihUTU7RrXx+XqYqIGi1po2
	 sDSEDJXxf/SQEZeixtnu7CFI1mMOKJQMhUtULq8+Pm9g0eVje6B7fv8H2NKp2xpSbW
	 KxKTnl6bTNZGe9qQkIfbhHiTAwrC6A03TVb3hV+jqNU8S3SOLw9cXE8Eofe+TOVDnH
	 NIHmFFxGFJkgEQyqvxDb4ThMHAJw4k3M0pBF74Jdyq+zrOgPR7YWU2J2G0cQ6PzsXM
	 0YkUgUVToiDnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA390C982D7
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 18:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178975443368.15177.6186016015446670928.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6473854620ff0674d8a10aa570032336d7206639043629357e9f039f6b8b342e
Date: Fri, 18 Sep 2026 18:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789754433
