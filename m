Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF7491F4CB8
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749290993; cv=none; b=jpEL/GRQOUMG9m+opadytnRMv4AEaki6WH2dTZLiCFnEsDnCLwWgQdnXqCtI0ArBrrBVBRzeKnJA55iEe4NKIY8tmFRElGcERKr87kRkA8z20kW58USWLVQIRiSKDibgwSxxyHDNvo+afcBU+53rFhueAciXqiR8ayqKfJ+IZUw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749290993; c=relaxed/simple;
	bh=osCSIjpjVc+SsKlkADoVML9YA4IsIwQrJFyL+/Dflxg=;
	h=To:Subject:From:Message-Id:Date; b=FtPHt/jm56mIST3qfWCPODVzp37kgeAs9QvkwehPasyHpMMEXcKZQ5uKzkJgcGnzHVStHPvD3lDeEatXmideCHiV9wtgEOSt52wVufSEcPTYJlSKxQ3uYA1gDSICZ9Lz45njm8V36Sf6+q5dRw0Js4RmtGUBij5eSgorq/GQ86c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s/DfegwT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s/DfegwT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E7D4C4CEED
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749290993;
	bh=osCSIjpjVc+SsKlkADoVML9YA4IsIwQrJFyL+/Dflxg=;
	h=To:Subject:From:Date:From;
	b=s/DfegwTBAyTJIFqoydDvtppxMKh0aigNoTlvp6Ms5A8G8b/gtP5Vt++O03UTs+Mb
	 RhhwmZcy8WKYldD96JbY0XOAjX2QpHYAEcTwjZpGmVlIVXFK2JHqprqDqxtwShpqOt
	 R35/nYwPrHudOogb/SgbL4+KBu4kVzj5WRXZR6XTi7E5yj5mFk2O5v7esLSlNbZoh+
	 EhhoLYFJJnv+/RGLJ6kl5PgVv8bEWba22trbpVKGG9rnriDlGpRW/22/uRz3AFg/rh
	 1z40QUPUn3xPL0IAYIqxCn3AF1fXQIDsuGU1PtgMj22pxT09OtoRQOQgUp5uFje3Wt
	 /FOlHLO/AxFVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FAB1C61CE7
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174929099358.9139.12637642287623203305.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4f18944f88971c44996160c221de6b484ab8b0d3f0ba79ff62ba88da68fb548
Date: Sat, 07 Jun 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749290993
