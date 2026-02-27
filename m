Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E9783290AB
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 08:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772180694; cv=none; b=fNEuqxjiX+2VC70KunWLKAbVd/msG9AJjJu0wKsC5E9nRj18P1cioEvwniHHDtePazJDJAuVnQCxSe1jmBGlci7t8rFaU5uBUyvZqC3SR86GPXDXo21WExBeKq4/SWkYYIOGakJRVER46irIVk1VMq5lWr2JoMdo2bJKbdXZVzU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772180694; c=relaxed/simple;
	bh=K0eAh8OiIP7f6R2djK3PMxy+nb9PGZieD0veaBbrS0M=;
	h=To:Subject:From:Message-Id:Date; b=Y2ZBB33rjJno/6DpqhWOoG4yUYyYBATFeR2ce/9nVaGEJdqe9E4h4L+dvVuKjU0FPMz/qUJEfPciiAjdWNmF7swSjB0YS42RxHPtCpG2D8Q6ooDsxNBifyOCbO36x/PqNWD8XYjBSIOTVIGmk+1mMXR4UrARXycw9vEn6gDS4Xc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CKHLSWns; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CKHLSWns"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2C72C116C6
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 08:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772180693;
	bh=K0eAh8OiIP7f6R2djK3PMxy+nb9PGZieD0veaBbrS0M=;
	h=To:Subject:From:Date:From;
	b=CKHLSWnsvwLhviesnHPnv+DcQYunXkS1baPLjmlPJUpCmsO0nQjqqaD2pIiNdcPKP
	 lNgXoVixq8t3YKXrxOk+KWEijVvYTvmyO8j/wY2JM7U5YY1nvr1k9ZJZ9IaHNddyeZ
	 FWvjnpq8WASVnpxtMZTdYAKRxEBm2Vd8Cp3t+aLSjtDOqFCNzE2fyZyPVmiXssqGbo
	 wl9Eb8rjNK7eqDc9owvN7n/KGhdd6UOvRiA3oOLUTSM7Bhh1hoNfx/O23FljN22nLV
	 B4nSFjfquRKcebdTfGaFM13q6LNK4Elbk3/jBVpa5+eK18Ryh7TPIxPdH8zLXOtLmB
	 LyXIiekErLWQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 925FDFD530D
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 08:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177218069358.3802.6756590349599662044.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9747e8373653b54588d04555d978fcf60b2468418620987b1365c77acf585ac2
Date: Fri, 27 Feb 2026 08:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772180693
