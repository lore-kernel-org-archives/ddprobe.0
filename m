Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28960188CC9
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 03:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774926894; cv=none; b=rEwyKv5kgWVbShOXu+rIgrQ8fMUvpB9fbcvYLlrdSqbf/dnU/F3g2azYwEly4s62OsmVLJzoiOfFzF52nH/Y/lDPxTKOMvMOoBfzrT396hPfflli5MuFES+H+mIky/dmNTUaCyZ9vce+ScOZoHIIbxPcJkGXeGQAznCm1m+d8V8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774926894; c=relaxed/simple;
	bh=YSNFjCCrpdThfqEpmFZkQvkAuxvYsfBBqgiIhScfqGs=;
	h=To:Subject:From:Message-Id:Date; b=Wa4Ml+AdlREIen5pqxQogcQWMfYyo7PfYobWqrApHYefZkNw3l1wMyfbw7RajtdpQ5gYjTNf+7pxBIj35jAK0UPae3xMHzs8aEPyAV9oM3co7CwuEviLjuDQ8DlV1kOIg7/bplUu79ZsHW5+FIFyV/iEvW7uEc4Wdxau4ZI0j3k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W0m8D7lW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W0m8D7lW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAC05C4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 03:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774926893;
	bh=YSNFjCCrpdThfqEpmFZkQvkAuxvYsfBBqgiIhScfqGs=;
	h=To:Subject:From:Date:From;
	b=W0m8D7lWiz/v+YA8dwQ64aVc52Qet5l5QS6k8MMNWsE8EXLEm05CJCUayXjcYSd0m
	 s7HaykrEdSCvSQ+nAPH7Rh0iapl6W+Nr9eL5QYAnsEV9f1RF5MnRzM+R+7Tzakb6oB
	 OuQzIPzHDj7wtz2NChiVNNTilkAk6r8NZw/1RkDC1+iT8kVDN1v+qP4GfcUxmq+AZt
	 pT7U2kJ0OqV39eKllJyCDyXntwuCyxO3zzc0e9VSsxlsR4NpSEOFQSyyaoPLs+sBlv
	 8+Ys69wHjMisPaggLS0hR0gxvdUAgDq3XXxDV7b+dZbhj3yfdh3jk0BrCioreX5LJv
	 ENL0lXPi5boGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9719B1061B2B
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 03:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177492689358.2069.16964383240616660460.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7f918e6dfef56388951fc21446824d9e63317e1cce8a0527c570ddc51e18579
Date: Tue, 31 Mar 2026 03:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774926893
