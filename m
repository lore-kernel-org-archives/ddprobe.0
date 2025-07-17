Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16F212BE65B
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752755394; cv=none; b=c1AX/3CX+0jB/dcn8keACwwm3l4/Rc58a2R/cvAtWYs9f/oonNv4h/4JJAZYRteOwPnAA4zAiTv4hOJuO2khcPBCNFws2eZV4KxpD8F1pq12QYmNMymLAbYullngUy3WZzkBvq81DX2NeZ1fbgwDwUEo6GDD3fMCfJwXKXRtGOk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752755394; c=relaxed/simple;
	bh=Sj5/gF+kRtGeWRVhNzb2eMb3cIMDE+UyYr8G2+s2cg8=;
	h=To:Subject:From:Message-Id:Date; b=Wph8ihrWmyBfhw7+ZMNPpLMLupx6VkZvLh3dwomn7l2P1513zwhrLpJh0IuqEA7mYLFfeUfYHeqhJP1mvs7iWoJnE8uXE8F3A657YanEqa2+JB2LsKVvlBqz1KAcFEbIf6YBF5zyTqP6gO1usGfUurxCJGs4ww0raUjDW5xD6lY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q+f+n/8e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q+f+n/8e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0884C4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752755393;
	bh=Sj5/gF+kRtGeWRVhNzb2eMb3cIMDE+UyYr8G2+s2cg8=;
	h=To:Subject:From:Date:From;
	b=Q+f+n/8ed5rrUTmo435FfSRmbHJGbBuFFZHWYfU2YI64i84j4CoTWR5R9cQi6vJC5
	 BPxsxVSEGhkeBbIRF89Qk2ZYjhcef+Z66r7BaUv5XGWsBU58oSkwAZqb50XcDpM34F
	 eW8fwAs6Ex9eDHXqIECLqXF7YDFDsT7ras4cHXe/T6wji2JSLce0i9CDDzxADd1dIq
	 sWV3z/ZG0XCmkXb0ppQ4B4mfrP77vLrIfJqE/sbhuYQp9jdtRP+eGlW5mVEsT1xMCW
	 DOGUXYxIkolvEgM+U14vawDtP+iEeG7EV5oaAlhyJU160T4RHHoIBas+XlkrWFSs7x
	 Ke8qlbl99oXbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 905DAC83F1B
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175275539358.17510.10394866115611280098.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2cb085cd37f89bc478923baab5c9481e23b42fb4e3dce91694615e7183d0db85
Date: Thu, 17 Jul 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752755393
