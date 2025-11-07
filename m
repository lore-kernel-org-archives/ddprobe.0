Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12DC4270ED2
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762504794; cv=none; b=TIqT9Oygle/OWAkCOcC4hTqDZEcgGRuMPcKtPDHc51vI1RFCCuG1V5Ryt8ZyzQ719cJFwma0ASPs2FcVGWMu+/YFCPpyFX+Dkwn/MDgDJ2YQSBkW5omUrjfDXvufGogtLSqZIsU+PKkI9Ql/rduiteVa1OKBDttDr0NaQyVjGLY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762504794; c=relaxed/simple;
	bh=Q+V/uP8lG6YtGoX1DUzEpaG9yxmbZ+KyF4A8gGxoIIc=;
	h=To:Subject:From:Message-Id:Date; b=UnY+hh9rBOU4JQnnhfJD6RNRuxfaJKlDn07P47dsAyNB5LK0x3koy5wnCKxHxgER12sPn7uT0t6zaEcWZu6000Ovh2Untqp3atZitqKZPn1RGgd+Lkf053sQHuqYsz39SA7bB/EHeEJZkxdVszGelW91/Q0zRjvHAUym7FYJvq8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z0yXCiA7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z0yXCiA7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D42AC4CEF5
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762504793;
	bh=Q+V/uP8lG6YtGoX1DUzEpaG9yxmbZ+KyF4A8gGxoIIc=;
	h=To:Subject:From:Date:From;
	b=Z0yXCiA7KyZyxXbys5/C4SV0XYLVwQR3FNqpCe7ZkLX7xYEe0sNugjK/GUfDo82K8
	 n9Dby0j7GOG+8uiOekud+rFG2E9ic79y63zCFhbACBFv7CPoaTXvuW+x9jcEHHNpwT
	 aBG82rrWsjHvcUoL7yLYiDB6j+KNo+eodEszHm4Sw017ney4ihSsJXhWZifMd4wgJ/
	 u0dCZJUkopQzdhJlvBpCWQviMUvArQVZ1uloTowztBHB5lep8OwoCTM6IVEG2Jfh0R
	 RmaSjz33Ra4lAhPEjndEIxm3+EO/MPfwMb562gI05BS+z0BLCsqExZBv6po47XdJNM
	 qk+/8goCMVGKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 905BDCCF9E3
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176250479358.23065.3861348304890328186.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 007f15690ee60a70ec8033dddab319a3cd31975c055c2be2492c8c7a6819975f
Date: Fri, 07 Nov 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762504793
