Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 627CF7FB
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 13:48:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718200103; cv=none; b=C0a48mSXU3N/eyKOsADsySZyhm4pYFDCa5NFlz/oModwEfZafoUwubDlLte5xZW5UBB1T7HWCA4O7xYokO7zi+YJUe7mTNGj0cjsXuXYxTsbQizT66zv6weUh5qKfb+7UeujiLNr5Y4Sqro6rH+ZDZn6HEXYuofW+efP7qSvNyM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718200103; c=relaxed/simple;
	bh=Y07fe7nnUCYCktsBO5fSrHcKt1Tu0HWLtrwAeuWBebg=;
	h=To:Subject:From:Message-Id:Date; b=WUuauP6gaTsWBezcPrmjnI69XaUlEddIBzAgecCZ+wcRvGz6NtZ2/FqEX3mJiy+JpiOfvgZoMKqW1EbkzhbCEjxBmt79fyIcCRD5mSQBEo6/TjbxvTmM+bGDlDe3gbUrTdiCG4i6A94yfRF5gvwd5cQYPej/1/KHiWR0Q9Rgcz4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qh2ChG8I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qh2ChG8I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EB573C116B1
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 13:48:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718200103;
	bh=Y07fe7nnUCYCktsBO5fSrHcKt1Tu0HWLtrwAeuWBebg=;
	h=To:Subject:From:Date:From;
	b=qh2ChG8Ioa0VhsBLvZt0vlhe1GTdWzRyYCO3MZEX1qllaBDZxIOq7U3DUwJEOs58/
	 K2My5FhV9+BAGhjzYc7pjwt5PN+lPl8EsMNSpYJoMMlWSha27gSOxRgY3hO8p8Uc6p
	 P1twdrl6WfkyLPP0ffXyZ7NJ8bKCGSglarVGJMu7qE0fnjO5m3p/jiWDcuk5HCXLgd
	 4yv+u7s8Fmeghr+EyYH6n2tGc9WM5w6w/EyAGwYMoYbUWV5RTIeLDhbS7xRNN1PXLg
	 aVRVElaEUUpjJlxDjUEQb8HfbY9wCdAU6mvXtQ+U2Im3ikLSyLLs9I6DhlstPRh2g6
	 eCA3Xo9A1qTuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D030FC27C53
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 13:48:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171820010283.22534.13729233123468683396.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b59ab7ee7f1ccb0e374d8dc28a50dd594c970d9c0c92522f36d7eae06a4b6d22
Date: Wed, 12 Jun 2024 13:48:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718200102
