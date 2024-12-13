Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24C80186294
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 21:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734125754; cv=none; b=kQp5Oqeg1VjW3Q5PDeF1Cbcpd8NxNBrNRwDn9FoDUVSECmfHECsJtV2sML/2Xlh1odGYM8UkWsrHrmeEQhxRxu57/F9TFLTMPiY4SHDHAgYukcZwzp45ELDkPvof6k+sCXi9p42nKt46qRf0YTtSlgENOC/RWQxNxq0HvOhcpIA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734125754; c=relaxed/simple;
	bh=iO/SdRmTf1fAMY/HI7LFYA+oUwG6EUn9CH7awxAAfx0=;
	h=To:Subject:From:Message-Id:Date; b=smWiSXu4QTRs7CRigIdl7oPyhPRtYkmSqLddoN5SAbEviJjrFF/NQZ+eJuTqXGlNI4g0kvxqW6917K3eKTmVtSKR5EQs3u4KR0yVvK2dgZ/FAQ0xfqU5TsHNF/C/95Nc5PbhWwLfOG/jgFYkDsfGp2QvXDay4WMh4tyLWH6ncs8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TYdulZF6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TYdulZF6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A14DAC4CED0
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 21:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734125753;
	bh=iO/SdRmTf1fAMY/HI7LFYA+oUwG6EUn9CH7awxAAfx0=;
	h=To:Subject:From:Date:From;
	b=TYdulZF6EOfetsJkvNWfS7zhAZpfVK39gFRsj/iQB6SvmPEHflaC8jOa7vKRH9UJT
	 l6mGahv20f1pu5/xSK3Gx/74RbNOZZJmUGdiwfiDd4M7R3Op0rLHdhRifsnLBkkt4a
	 9cbw9tmjE/H3KVGlFqjqgh7sv6I5dKmIpkwDjHnbjDl4Za/25wTRXAl6DSR6CY7jrc
	 5bHd1blssRr0oJGbqZTcabmpSCefxMwD7s/x6a5rqW6mfjvhRhyxqrgXrHr5M3iC4i
	 3m940ajIxnG4feA7MdtQpUjIP+fddJu3LRNEXRGRmqcIPoP80x3cJuyIE0qKlUju91
	 5vBu4jQcz4PzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90A67E7717F
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 21:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173412575358.27662.1916176662023407565.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b026c4d2f63ae91c0474221483e73feda337785b5186634b6049c622b733422d
Date: Fri, 13 Dec 2024 21:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734125753
