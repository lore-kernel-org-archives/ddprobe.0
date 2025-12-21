Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 218D930498E
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 18:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766340834; cv=none; b=XiCp1LA+asyQGJ3YWB86VmZY+zLeIntVcd2S2NP19yIEJoExGXyJBvf9OaxnOVV6aEIC5ck80sIK0E/k0rN2oxjTtgxfvOjQp4My6mv66D2Xpse6GHua50NsTJXKg58/hG3JsVVZt9Odiiv0aMUP0relCFJAJin5iqLDTe7y2HU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766340834; c=relaxed/simple;
	bh=QUDtuqaBi7O0guE4iAxwUWLJ3K4V+xtiXHrAXsOPVl0=;
	h=To:Subject:From:Message-Id:Date; b=fq1gSIvqfOAeohX1AZHi4Sj3KjlcRR/g6dfJbiu/kJ3CaS/Q4yzPorh/jP8jVkYvrVa1w7EOtFAwRCns5Yh0YN7Lx/5/AC1gp8B+sUPDGtqyBqCnxm2LALBuALhvIX+PopnphKcUUKNBDTKTLSRmFhkdOL3996t1GdORGYPO1kU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dOI5Zger; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dOI5Zger"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A33B3C4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 18:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766340833;
	bh=QUDtuqaBi7O0guE4iAxwUWLJ3K4V+xtiXHrAXsOPVl0=;
	h=To:Subject:From:Date:From;
	b=dOI5ZgerOGKmKhSZctGqgHESoIBTCmx1ew2ClKhIMkufIYg+jMSSmY0tdHDIZDhjL
	 VMqcOoqNliSFZgsArDwBpiyds2PCLeeaX9GVWQWVPKV/8gChUAHDJ2iSm4pH8ZDhQM
	 09rUJfMQjJ3f2NQPt4b0bSnQ9/l6Op20BfvpsaWmyurEi3dmfcINgy50mku5f+Z+K+
	 ILYDhwk5IWYUzpvdhBDKuLEm2W+Q7MDYvxNfVTYE5EMt0GKlpnYvzq9iLxDcSItRkN
	 DTeZiRTRf4KzTsSPpb2wgrj2PVgYE+/MK2ydP1tAVyl7n8IvsftofwaxhS/PfGsAo/
	 jbpF02y6K0zxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9551FE66886
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 18:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176634083357.18611.13190224282431955360.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ad6fb35377299f72f28279c98a593de9199be0df8ba0588bdd70c48363f29a4
Date: Sun, 21 Dec 2025 18:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766340833
