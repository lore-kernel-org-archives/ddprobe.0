Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DE04224FA
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 00:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773620094; cv=none; b=UR7RJffsuWKbOWg8eja8F36vHifTFjj8zPQ75aC4XkZbZWW6N57xvcCTCB/VJvaWwQnN8ztz+D0SGsDd0Sj5u+8g8Wl69kcDMB1kBSBJXC2zodD/uBvjU/xxLpH4Xkl43nV4wM6B5hyjjaJg7WrdypS5w4yLFnL9tKOrNEuT+x0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773620094; c=relaxed/simple;
	bh=TW1RjYT1P1mwGqJDzl4In+i8qdW5lzyGdZbiUq+NjiA=;
	h=To:Subject:From:Message-Id:Date; b=JtHY2sVdq6ByqelOlV1bBbZmXEtqDoF/tQdmeHQFivOKvkTDr+p6Z4uOrtoXU8LtDjBt2y22mfHr9j1QOGQlsyOE+nR/KyqnuEJnPJZ/kqYwHMXtrftd8XYeq0jl4q7NjK1+7V28F8hner8NJSJT3bqFc8Vc4dYIaVDGt6BWyIA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iFglOIlx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iFglOIlx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A64DDC4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 00:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773620093;
	bh=TW1RjYT1P1mwGqJDzl4In+i8qdW5lzyGdZbiUq+NjiA=;
	h=To:Subject:From:Date:From;
	b=iFglOIlx7eW6X6cQj+ESRVbmCgW9+Z/gzD4Sm8JBDcdyujFN1OWED3yZW3mnT0Aqx
	 Qty2TDH7/rortDtnrX2jSr3ZXJtILj51NhQaLpsc5xTqaBoDmFA3uQjQ0NFSwoVxmV
	 a6UC2Nl63DMiD7gvrj5klrMTrea6XcLpSVPFIi5s0ZiBh3OYHBf+b/D9cNEAAWG+o8
	 KIK7e8TELENrsDiGO9ivCqzNsPNmYqjTQ47W12VkCbsDytamg+LSiN9G2fgG+Et+zM
	 2nrxCUZiRcmSfzQPyAkG3MpugQbdYJdFpC/R6+3izFTQd45c3AIYPD8PLHcEGBCGtg
	 Nzb4nzO5cxWew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94649F30283
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 00:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177362009357.16315.6110861648918991095.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d00068f68a009a652be0fa4de36722a58aceafaeb52507b6f6029d0ec70014b
Date: Mon, 16 Mar 2026 00:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773620093
