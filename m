Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 087088F48
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 13:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772285094; cv=none; b=Pwr9eaQzaGjkiGH1GcIcbF8NqOOFeG2/U9bb8nSCyqOUClSdMr94P3eJMK3dcqJwaZVKyQO4GSVPDqBFiTu028recQiEkInLsXgsL2yCgisMfDdmbnQ37JVAWcUIrg+U8M+5V5RCXDnCzCjGjuEpPPJd4wKrmliaWxFgyTwlQtA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772285094; c=relaxed/simple;
	bh=yq9WvzKABiKDwZVhkaXr2rC5ks8jrKw5f3GZqhJ/tDo=;
	h=To:Subject:From:Message-Id:Date; b=MmbmdYV3Nh22YuXplzue0MrZR6cTCJSsP+RkksWJChEgi/q/cEeZZh5Pi1950gvukW7uzxMgXSrEEP4N/YICT47erAipF8ujTAjgd8CPwM20G98q56xPiKhBtW2pOP4tvpRQvpHjcUldzBRqbEywCQBB7GyY3icLsj9hhUsmJ6k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fuyVWpSp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fuyVWpSp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FACFC116D0
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 13:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772285093;
	bh=yq9WvzKABiKDwZVhkaXr2rC5ks8jrKw5f3GZqhJ/tDo=;
	h=To:Subject:From:Date:From;
	b=fuyVWpSp9wt2QNsF4sLCvkl377zcJz/NKdMqab+qMVI6MQk/ZHdICGbDJneK13Kae
	 PMKWFC4gIT6i5yEzNZI2Nw34P7UsluG82VEm1EN8vBvvtWo7TcSJLPG+zMpz7ta37o
	 iWZCVareWBXjzz58oyAsB6Ncr9DHNmatBxFJofZd/RIlN/1y+oRz0toZLMsa0ZyzbB
	 5LZzQOO9XeM4zb++LWxtOK2uEhKYoV58jQyia82dMYQCS4myiM681ow0QY6GPXup9p
	 C0aG/5h4MlOIwJHkKMRVMZuGTDR9DII1jgF0Joz5V77fxt2Jm/jUhRo6qsEO6FPVaL
	 lbuVRHwQCh4lw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FFDFFEE4EF
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 13:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177228509357.1844.2081932316787981484.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95f4028363072b12847ad26de5eba243ad24b5d569514b8003f60b553a5ed8f6
Date: Sat, 28 Feb 2026 13:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772285093
