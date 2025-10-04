Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 341701FC3
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759555794; cv=none; b=FYP3nGNrzrnexmNek4zXcrW6EBNgd76xQNiyb9BVtgQWeLgTf1uBvyvYBgPh5LSaSaM1Zc1SFA8pDYEQtQGFUYWgS1pSsPCXZ/E9lNsQZB7OHW7O+8cszvPMv5W39MLPRMMetXQKgn9SXV9YKEwDS4rQdfehBKD3kQ6GguvunVU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759555794; c=relaxed/simple;
	bh=X0QsaesVTTo1Ze6Do+n3tC2N7SnC43eRLwdLXZsF2+g=;
	h=To:Subject:From:Message-Id:Date; b=WAJ3dLqxJq/hTXBRVqlIAqidgGXMbwldtmm+OkVgTyZAD8tcOOFTCjoRWC7zGl+GoJqsLiZQloCEirpOC/VmIOHq3Um/FvJ3QHr/lbzkELcXI/Q2KQGrUJ/fXxd5sv/RU5Juo6L/Np1zfA3J+ZuXyiJIpn3KN12XaxtvVhEjUDs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L7BP+OjL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L7BP+OjL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A13C2C4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759555793;
	bh=X0QsaesVTTo1Ze6Do+n3tC2N7SnC43eRLwdLXZsF2+g=;
	h=To:Subject:From:Date:From;
	b=L7BP+OjLepdFKqMynbzUq3rk1/BdB/yWoNb/vFwhW+cKOcKBlsViwlTxfsgAgl1C4
	 XBbhcWa9jMcExe3/orLxZv40pxf8yh/r6yVnPMl7tfmf+rCUAcWpDvGFriuGL0k070
	 4vCcDAMOiu6QQ0XoHl+d9c5fosQAKQnNZ3SbXgZ56431fmMK6ctiQy69/uNXpfW2Sh
	 QJg61xJcHX6Q40A/UvxeaCJqEkGmKTwQzL8CLbWFkCThun1GQjlQTOptsnHXom6TtZ
	 wD8irZ93f7JEZeDWdvCn31Qn3k3Igh253F6DLLAovMCxp4d8AN5WpQKH8/dQ35fwK7
	 GBqGr9BWJDsNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91CCCCAC5BB
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175955579357.3285.5982470944757920253.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c587f60031305a74613eb574a8ce6f6b66d72189350cf78cfa8f132c17adfe0
Date: Sat, 04 Oct 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759555793
