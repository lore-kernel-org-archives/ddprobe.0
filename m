Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A521482EF
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748728794; cv=none; b=PkvUvpOPudSHBFh6+flXC8obkgx42IDK4I8EFsVA1zxPB4p9dcJDVKR6eL2hqWQ6501mvCSbLKHEcLHnHEH3DYwiVlu/6ngue16m5vF8OrMM1SLHc/V24PTXx9UKjTxzx97aenoPSq5CVMGu9VZ/DfvuMP4qV5yDAFZaStQgHV0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748728794; c=relaxed/simple;
	bh=ZaP3KSYLnHlH+BaehG44JISIshqLmF0625ZxHG2eYKQ=;
	h=To:Subject:From:Message-Id:Date; b=eeYVYK+b6+/xiR30kVI0DK86UWQiIBxlhjB5Ueith+cMY059EiKA4zjoOuw+6pKmHJ9My9G8s9p2d5u0l2ShSib2nO2VxAebC9YZJuoiEiVrfgsgLTvY03M+Zq3Gt2t6d37pLT0Pbo0GfVaBfEmt+A7h+72SNOwaozj9OHS1OvQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oWlrxM8Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oWlrxM8Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6415C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748728793;
	bh=ZaP3KSYLnHlH+BaehG44JISIshqLmF0625ZxHG2eYKQ=;
	h=To:Subject:From:Date:From;
	b=oWlrxM8Z4Fw9yYPuK0UqYK3BaOvh3zBc0TocX7Gsy2IuJMXg571PbyNnlPjIUWgCb
	 ZsHInJvg5aQAbyEVd3t6BsgdeMG+A8I1c9wzLPSypV1r+pXtUyGJhs2FGnYYcWC9RB
	 936NLDv2jxz8A4bSfQZG9pKNMo/S2NkgK5cEhpBimF2hK6pelO1jjwFyBKJQuirWZK
	 c4/MiA8mBjS1kbJ/it9olVQI18rsCb8yF3IMvrjUD4ZAgBWCGW9actk1Z2A/O2XWxv
	 ocFT36l5DknViwYpLzSxxbjdad/ZMoJ9shelkdonpryUH8LUjwuWcFTQMwXSOL0OcF
	 7Id4KsUFaJdEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 914EEC5AE59
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174872879357.4815.5519252990088808616.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d1a19ae82229ea56b271b47c405b3b92d91b8641c2fdd2b5c13040fe0e857f2
Date: Sat, 31 May 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748728793
