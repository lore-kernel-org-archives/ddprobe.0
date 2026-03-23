Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F28F14884C
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 01:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774229694; cv=none; b=TntVo/AhOZbjI+RVSsQfnuTcm2hMb5nVO4lz3Gw+tKbF+Tk/tqj/KIYEtZeo2smv6SoBLE7ImAuo33+yDBKv2IXaGnPkST4444tq7cnPUvN5w+TfrY+kzMINGO0rbUcWt23r5KEUfmc+Iwl3B5a7Cdg5+NYeWkXslM4rsmi/tyA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774229694; c=relaxed/simple;
	bh=Jdtb+QQFTvavZlmrQMpon8DWqkU5wj9mNHTuB8zx0YU=;
	h=To:Subject:From:Message-Id:Date; b=C5eH7lsfxkQ3aiYWmVaa39u/GFBJ0l/kYsoarRsd0XE//X0tFutbuntQugn81LU1eKlFNI9C4P+E5lSJUHtxHqdp8qWT8ELV18r0zNlKJ3nLmF3AYAht9ZAidIZvQsHLvqJuIePyVDOWAmrgE6SxUv9cCYCcvtRugdEz5w75PRY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ePdv/014; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ePdv/014"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8D19C19424
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 01:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774229693;
	bh=Jdtb+QQFTvavZlmrQMpon8DWqkU5wj9mNHTuB8zx0YU=;
	h=To:Subject:From:Date:From;
	b=ePdv/014zIFH9b48a0StdCrn+xaQVhYUab7rFcG45VFGL5j4/6h+kA7ytnzAUSqM4
	 veshGxnIcgujN0i+guLwPVQ4UnJdFLzCP6pAPxht7v+C8c/FMOo7Oivoj1zXkjRY+a
	 F+37bkF90d14f1LMoGvWhoTW0So77XjqR5TUS8XdG7xkM0IIWsRWO4AdnFKbabCgit
	 05jNuezF7RDnUhMgWt8kE4b1MSlb2s24uiPtTx3sYHmwpZVcrwdzIvCx7CLJHX62s/
	 C/ZDbbjdA1I8yod33s7mOG/22vCl1P1LKFOl/u6TgfKY9Gy8pdn4S52Og4gBP5MjKy
	 YsakNn8uWiOmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96C4BD58CBD
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 01:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177422969358.32716.11513549443940600212.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d840ed3f1233033ca21d75d96b6e1302c8069e5689246f77b9095455249d6adf
Date: Mon, 23 Mar 2026 01:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774229693
