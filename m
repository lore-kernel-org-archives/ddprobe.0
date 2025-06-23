Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 277A517A316
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750644594; cv=none; b=Qr+dY7t2x79mbuNnwy5R3gPuliFowR9KMqLuwRw6AuswkW7arNySilboqqu16xSgxfLzug4TqzH7attZQhJIxCNR35Kr2lu5azU3Tce+SpnvbL6dRXcszCZUuvZvWVsdtxNSHzZVatPcxj0OncCfa6S7FjkDM0w7e5rafAieiKw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750644594; c=relaxed/simple;
	bh=FY1nE0b9IUce20lthp2gHcLajxIOP4YWQh0T5eihWz8=;
	h=To:Subject:From:Message-Id:Date; b=XPp/zgxd2vKXb5d0kES+4mtKHCnni9hWxU3GCqSCO0qH/2E/zVA2fPsr/sLZEs0Xt66241Kbq0TTzauMy8cHaRdL0LRkQzmwDBArhXCQgv2DwRgOBJ1D0AzvRiDvpIQd8m8uAO20xh1v9ixex4wihhXlXuBjOh/rDEe9uHVnU8A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rzN7/XMI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rzN7/XMI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6C4DC4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750644593;
	bh=FY1nE0b9IUce20lthp2gHcLajxIOP4YWQh0T5eihWz8=;
	h=To:Subject:From:Date:From;
	b=rzN7/XMIqCyDs8bflzfcb7eDM1p3QE353mz3pVVmh4a2Nvihs6vzsBuCRa0EAEMHS
	 lBGYpUBqlvmEgRJ84oYaqgFa0HMkdgyO8iL3a2UfK0Me+3oB6UFtNg1MS9nKiuYyJh
	 M+rS/PwE50rvI3LdKo6hWJFLw0+cNL5szlYO0fG+gBSgojcGsg5P3VIcXcv+r3Bbww
	 ieo2zcK9DWZKWPlNHGG/Ik0CfN0tmQoLMDuIC29gEtLaRNoDZ1xltIcLMpRybFIKpL
	 kU6qk4icK9zkIAgnVjGMHsW01ei33nj5DT8HBWNsHLTkTSFL1jlNLRF7Qs4lVQYZLs
	 72Y1mmnl2wpFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96522C7115C
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175064459358.12955.7512680485679472528.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3f2659cf34b5976978b1297a3a49c4077cd58d023df6be628806583425588ce
Date: Mon, 23 Jun 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750644593
